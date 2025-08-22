# Players Generator

This repository change adds a simple generator script that reads `teams_info.json` and produces `players.json` with weighted random stats based on player position and rarity.

Usage:

1. Ensure `teams_info.json` (the teams and players list) is in the repository root.
2. Run:

```bash
python players_generator.py
```

3. The script will write `players.json` with the generated stats.

Notes:
- Gold players have stats mostly in 78-85, with 1-3 star golds per team boosted into 86-90 for their main stat category.
- Silver: 65-77, Bronze: 50-64.
- The RNG seed is fixed (42) for reproducible output. Edit `SEED` in the script to change randomness.

Commit: Add players generator and README