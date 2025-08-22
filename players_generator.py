# players_generator.py
"""
Generate players.json from teams_info.json with weighted random stats.
Usage: python players_generator.py
Produces: players.json in the current directory.
"""
import json
import random
import sys

SEED = 42
rng = random.Random(SEED)

# Rarity ranges
RARITY_RANGES = {
    'gold': (78, 85),   # main range
    'silver': (65, 77),
    'bronze': (50, 64),
}

# Allow some gold players to have 86-90 in primary stats
GOLD_STAR_RANGE = (86, 90)

# Stat categories and subfields
STAT_TEMPLATE = {
    'pace': ['acceleration', 'speed'],
    'shooting': ['positioning','power','long','volleys','penalties'],
    'passing': ['vision','cross','short','long','curve'],
    'dribbling': ['agility','balance','reactions','control','dribbling'],
    'defending': ['intercept','heading','tackle','sliding'],
    'physicality': ['jumping','stamina','strength','aggression']
}

# Position -> prioritized stat categories (main stat area first)
POSITION_PRIORITIES = {
    'GK': ['defending','physicality','passing','dribbling','pace','shooting'],
    'CB': ['defending','physicality','passing','pace','shooting','dribbling'],
    'RB': ['defending','pace','passing','dribbling','physicality','shooting'],
    'LB': ['defending','pace','passing','dribbling','physicality','shooting'],
    'CDM': ['defending','passing','physicality','dribbling','pace','shooting'],
    'CM': ['passing','dribbling','physicality','defending','pace','shooting'],
    'CAM': ['passing','dribbling','shooting','pace','physicality','defending'],
    'RW': ['pace','dribbling','shooting','passing','physicality','defending'],
    'LW': ['pace','dribbling','shooting','passing','physicality','defending'],
    'ST': ['shooting','pace','dribbling','physicality','passing','defending'],
}


def pick_in_range(rng, low, high):
    return rng.randint(low, high)


def generate_stats_for_player(position, rarity, rng, is_star=False):
    base_low, base_high = RARITY_RANGES.get(rarity, (50,85))
    stats = {}
    # Determine which category is primary for potential star boost
    priorities = POSITION_PRIORITIES.get(position, POSITION_PRIORITIES['CM'])
    primary = priorities[0]

    for category, fields in STAT_TEMPLATE.items():
        stats[category] = {}
        for field in fields:
            low, high = base_low, base_high
            # If gold and this is the primary category and is_star, boost
            if rarity == 'gold' and is_star and category == primary:
                low_star, high_star = GOLD_STAR_RANGE
                # Mix ranges so some values fall into star range
                # pick either from star range or base range
                if rng.random() < 0.85:
                    val = pick_in_range(rng, low_star, high_star)
                else:
                    val = pick_in_range(rng, low, high)
            else:
                val = pick_in_range(rng, low, high)
            stats[category][field] = val
    return stats


def choose_star_flags(players_list, rng):
    # For each team, pick 1-3 gold players to be stars
    team_to_indices = {}
    for i, p in enumerate(players_list):
        team = p.get('team','')
        team_to_indices.setdefault(team, []).append(i)

    star_flags = [False]*len(players_list)
    for team, indices in team_to_indices.items():
        gold_indices = [i for i in indices if players_list[i].get('rarity')=='gold']
        if not gold_indices:
            continue
        num_stars = min(len(gold_indices), rng.randint(1, min(3, len(gold_indices))))
        chosen = rng.sample(gold_indices, num_stars)
        for idx in chosen:
            star_flags[idx] = True
    return star_flags


def build_players_from_teams(teams):
    # teams is expected to be a structure listing teams and players.
    # Accept either a list of players or the earlier teams_info format.
    players = []
    # If teams is dict with "players", assume flat list already
    if isinstance(teams, dict) and 'players' in teams:
        return teams['players']

    # If teams is list of player dicts
    if isinstance(teams, list) and teams and 'name' in teams[0]:
        return teams

    # Fallback: try to parse teams as mapping team->list
    for team in teams:
        # each team might be a dict with name and players
        if isinstance(team, dict) and 'players' in team:
            for p in team['players']:
                players.append(p)
    return players


def main():
    # Load teams_info.json from repo if exists
    try:
        with open('teams_info.json', 'r', encoding='utf-8') as f:
            teams_info = json.load(f)
    except Exception as e:
        print('Error loading teams_info.json:', e)
        sys.exit(1)

    # Build flat players list; teams_info.json should provide players data
    # Expected format: list of teams each with 'players' or a flat list of player dicts
    players_list = build_players_from_teams(teams_info)

    # If teams_info.json contains teams in custom text, try to read fallback 'players' key
    if not players_list:
        print('No players found in teams_info.json')
        sys.exit(1)

    # Determine star players per team
    star_flags = choose_star_flags(players_list, rng)

    # Generate stats per player
    output_players = []
    for i, p in enumerate(players_list):
        pos = p.get('positions', [])
        primary_pos = pos[0] if pos else 'CM'
        rarity = p.get('rarity', 'gold')
        is_star = star_flags[i]
        stats = generate_stats_for_player(primary_pos, rarity, rng, is_star=is_star)
        entry = dict(p)
        entry['stats'] = stats
        output_players.append(entry)

    # Write players.json
    with open('players.json', 'w', encoding='utf-8') as out:
        json.dump({'players': output_players}, out, indent=2, ensure_ascii=False)

    print('Generated players.json with', len(output_players), 'players')

if __name__ == '__main__':
    main()