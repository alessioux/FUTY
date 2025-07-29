local info = {
  countries = {
    albania       = "🇦🇱",
    argentina     = "🇦🇷",
    australia     = "🇦🇺",
    belgium       = "🇧🇪",
    brazil        = "🇧🇷",
    cameroon      = "🇨🇲",
    canada        = "🇨🇦",
    chile         = "🇨🇱",
    china         = "🇨🇳",
    colombia      = "🇨🇴",
    croatia       = "🇭🇷",
    denmark       = "🇩🇰",
    egypt         = "🇪🇬",
    england       = "🇬🇧",
    france        = "🇫🇷",
    germany       = "🇩🇪",
    ghana         = "🇬🇭",
    greece        = "🇬🇷",
    iran          = "🇮🇷",
    iraq          = "🇮🇶",
    italy         = "🇮🇹",
    japan         = "🇯🇵",
    mexico        = "🇲🇽",
    morocco       = "🇲🇦",
    netherlands   = "🇳🇱",
    nigeria       = "🇳🇬",
    poland        = "🇵🇱",
    portugal      = "🇵🇹",
    qatar         = "🇶🇦",
    russia        = "🇷🇺",
    saudiarabia   = "🇸🇦",
    senegal       = "🇸🇳",
    serbia        = "🇷🇸",
    southkorea    = "🇰🇷",
    spain         = "🇪🇸",
    sweden        = "🇸🇪",
    switzerland   = "🇨🇭",
    tunisia       = "🇹🇳",
    turkey        = "🇹🇷",
    ukraine       = "🇺🇦",
    unitedstates  = "🇺🇸",
    uruguay       = "🇺🇾"
  },

  leagues = {
    EN1 = "Imperial League",
    IT1 = "Series Calcio",
    SP1 = "Liga Estrella",
    DE1 = "BundesKraft Liga",
    FR1 = "Championat Royale",
    BR1 = "Liga do Ouro",
    AR1 = "Primera Estilo",
    US1 = "National Football Circuit",
    JP1 = "Neo Nippon League",
    ND1 = "Dutch Velocity League",
    PG1 = "Liga Lusitana",
    RU1 = "Siberian Football League",
    ME1 = "Liga Azteca",
    SK1 = "Unnie League",
    CA1 = "Maple League",
    AU1 = "Upside-down League"
  },

local clubs = {
    -- England
    ["kingchester town"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Manchester United Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["liverriver"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Liverpool Red
            shorts      = Color3.fromRGB(255,   0,   0),  -- Red
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["chellake"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Chelsea Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 165,   0),  -- Orange
        }
    },

    -- Italy
    ["naples fc"] = {
        kit = {
            shirt       = Color3.fromRGB(  0, 191, 255),  -- Napoli Light Blue
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["international fc"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Inter Milan Blue
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["milano sport fc"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- AC Milan Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },

    -- Spain
    ["fake madrid"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Real Madrid White
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(128,   0, 128),  -- Purple
        }
    },
    ["varcelline"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Barcelona Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["non atletic capitals"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Atlético Madrid Red
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },

    -- Germany
    ["common bavaria"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Bayern Munich Red
            shorts      = Color3.fromRGB(255,   0,   0),  -- Red
            goalkeeper  = Color3.fromRGB(  0,   0,   0),  -- Black
        }
    },
    ["dortburg lions"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255,   0),  -- Dortmund Yellow
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["frankfurt blitz"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0,   0),  -- Eintracht Frankfurt Black
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- France
    ["olympique bordeaux"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Lyon White
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0,   0, 255),  -- Blue
        }
    },
    ["paris monarchs"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- PSG Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["lyonnais fc"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Lyon White
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0,   0, 255),  -- Blue
        }
    },

    -- Brazil
    ["rio dragons"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Flamengo Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["são verde fc"] = {
        kit = {
            shirt       = Color3.fromRGB(  0, 128,   0),  -- Palmeiras Green
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["porto sol"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Santos White
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0,   0,   0),  -- Black
        }
    },

    -- Argentina
    ["club rosario azul"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Rosario Central Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["buenos aires stars"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Boca Juniors Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 165,   0),  -- Orange
        }
    },
    ["cordoba united"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Talleres Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- United States
    ["liberty fc"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- LA Galaxy White
            shorts      = Color3.fromRGB(  0,   0, 128),  -- Navy
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["new york thunder"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- NY Red Bulls White
            shorts      = Color3.fromRGB(255,   0,   0),  -- Red
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["pacific bay fc"] = {
        kit = {
            shirt       = Color3.fromRGB(  0, 255,   0),  -- Sounders Green
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(128,   0, 128),  -- Purple
        }
    },

    -- Japan
    ["tokyo phoenix"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- FC Tokyo Red
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["osaka blades"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Gamba Osaka Blue
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["kyoto spirits"] = {
        kit = {
            shirt       = Color3.fromRGB(128,   0, 128),  -- Kyoto Purple
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- Netherlands
    ["amsterdam storm"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Ajax White
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["rotterdam knights"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Feyenoord Red
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["eindhoven fc"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- PSV Red
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0,   0, 255),  -- Blue
        }
    },

    -- Portugal
    ["lisbon falcons"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Benfica Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["porto mariners"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Porto Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["braga elite"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Braga Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- Russia
    ["moscow titans"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Spartak Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["st. petersburg ice"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Zenit Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["volga fc"] = {
        kit = {
            shirt       = Color3.fromRGB(128,   0,   0),  -- Rubin Maroon
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },

    -- Mexico
    ["guadalajara fire"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Chivas Red
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["monterrey eagles"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Monterrey Blue
            shorts      = Color3.fromRGB(  0,   0, 255),  -- Blue
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["tijuana fc"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Tijuana Red
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- South Korea
    ["seoul warriors"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- FC Seoul Red
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["busan thunder"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Busan Red
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["incheon blaze"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- Incheon Blue
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },

    -- Canada
    ["toronto peaks"] = {
        kit = {
            shirt       = Color3.fromRGB(255,   0,   0),  -- Toronto FC Red
            shorts      = Color3.fromRGB(255,   0,   0),  -- Red
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["vancouver aurora"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 255, 255),  -- Whitecaps White
            shorts      = Color3.fromRGB(  0,   0, 128),  -- Navy
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["montreal impact"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 255),  -- CF Montréal Blue
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },

    -- Australia
    ["sydney roos"] = {
        kit = {
            shirt       = Color3.fromRGB(135, 206, 235),  -- Sydney Sky Blue
            shorts      = Color3.fromRGB(  0,   0, 128),  -- Navy
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
    ["melbourne surge"] = {
        kit = {
            shirt       = Color3.fromRGB(  0,   0, 128),  -- Victory Navy
            shorts      = Color3.fromRGB(255, 255, 255),  -- White
            goalkeeper  = Color3.fromRGB(255, 255,   0),  -- Yellow
        }
    },
    ["brisbane heat"] = {
        kit = {
            shirt       = Color3.fromRGB(255, 165,   0),  -- Roar Orange
            shorts      = Color3.fromRGB(  0,   0,   0),  -- Black
            goalkeeper  = Color3.fromRGB(  0, 128,   0),  -- Green
        }
    },
}

  rarities = {
    tots   = "Team of the Season",
    toty   = "Team of the Year",
    totw   = "Team of the Week",
    gold   = "Gold",
    silver = "Silver",
    bronze = "Bronze"
  },

  packs = {
    goldpack = {
      name       = "Gold Players Pack",
      desc       = "11 gold players; small chance of Team of the Week.",
      count      = 11,
      cards      = { gold = 99, totw = 1 },
      guaranteed = { state = false, card = nil }
    },
    silverpack = {
      name       = "Silver Players Pack",
      desc       = "11 silver players; small chance of gold.",
      count      = 11,
      cards      = { silver = 99, gold = 1 },
      guaranteed = { state = false, card = nil }
    },
    bronzepack = {
      name       = "Bronze Players Pack",
      desc       = "11 bronze players; small chance of silver.",
      count      = 11,
      cards      = { bronze = 99, silver = 1 },
      guaranteed = { state = false, card = nil }
    }
  },

  playstyles = {
    ["Scoring"] = {
    -- Scoring
    [1] = {
      name = "Chip Shot",
      [1] = "Faster, more accurate chip shots.",
      [2] = "Very fast chip shots with precise placement."
    },
    [2] = {
      name = "Finesse Shot",
      [1] = "Faster shots with extra curve.",
      [2] = "Quick shots with maximum curve."
    },
    [3] = {
      name = "Power Shot",
      [1] = "Stronger, faster driven shots.",
      [2] = "High-speed shots with added power."
    },
    [4] = {
      name = "Power Header",
      [1] = "More powerful headers.",
      [2] = "Hard, accurate headers."
    },
    [5] = {
      name = "Low Driven Shot",
      [1] = "Faster, low-skimming shots.",
      [2] = "Fast shots with tight accuracy."
    },
    [6] = {
      name = "Dead Ball",
      [1] = "Quicker, more accurate set-pieces.",
      [2] = "Fast set-pieces with better curve."
    },
    },
    ["Passing"] = {
    -- Passing
    [7] = {
      name = "Incisive Pass",
      [1] = "More accurate through-balls.",
      [2] = "Precise through-balls with added curve."
    },
    [8] = {
      name = "Pinged Pass",
      [1] = "Faster ground passes.",
      [2] = "Top-speed passes with full control."
    },
    [9] = {
      name = "Long Ball Pass",
      [1] = "More accurate lofted passes.",
      [2] = "Accurate long passes hard to intercept."
    },
    [10] = {
      name = "Tiki Taka",
      [1] = "Accurate first-time ground passes.",
      [2] = "Even more precise short passes."
    },
    [11] = {
      name = "Whipped Pass",
      [1] = "Faster, accurate crosses.",
      [2] = "Driven crosses with extra speed."
    },
    },
    ["Ball Control"] = {
    [12] = {
      name = "First Touch",
      [1] = "Fewer trapping errors.",
      [2] = "Minimal trap errors and quicker control."
    },
    [13] = {
      name = "Flair",
      [1] = "Adds flair moves with accuracy.",
      [2] = "More flair and precise execution."
    },
    [14] = {
      name = "Press Proven",
      [1] = "Better control when jogging.",
      [2] = "Tighter shielding and close control."
    },
    [15] = {
      name = "Rapid",
      [1] = "Faster sprint dribbles.",
      [2] = "Max sprint speed, fewer errors."
    },
    [16] = {
      name = "Technical",
      [1] = "Sharper turns while sprinting.",
      [2] = "Precise turns at top speed."
    },
    [17] = {
      name = "Trickster",
      [1] = "Unlocks flick-style skill moves.",
      [2] = "Extra flicks with agile dribbles."
    },
    },
    ["Defending"] = {
    [18] = {
      name = "Block",
      [1] = "Better reach for blocks.",
      [2] = "Even wider reach and success."
    },
    [19] = {
      name = "Bruiser",
      [1] = "Stronger physical tackles.",
      [2] = "Harder tackles and hold-up play."
    },
    [20] = {
      name = "Intercept",
      [1] = "Improved interception reach.",
      [2] = "Best reach and ball retention."
    },
    [21] = {
      name = "Jockey",
      [1] = "Faster sprint-jockey transitions.",
      [2] = "Quickest shift from jockey to sprint."
    },
    [22] = {
      name = "Anticipate",
      [1] = "Better standing tackles.",
      [2] = "Highest tackle success at feet."
    },
    [23] = {
      name = "Slide Tackle",
      [1] = "Slide and keep the ball.",
      [2] = "Wider coverage and ball stop."
    },
    },
    ["Physical"] = {
    -- Physical
    [24] = {
      name = "Quick Step",
      [1] = "Faster initial sprints.",
      [2] = "Strong burst off the mark."
    },
    [25] = {
      name = "Trivela",
      [1] = "Outside-foot passes/shots.",
      [2] = "Better power and accuracy on trivela."
    },
    [26] = {
      name = "Relentless",
      [1] = "Slower fatigue loss.",
      [2] = "Longer stamina and quicker recovery."
    },
    [27] = {
      name = "Aerial",
      [1] = "Higher jumps.",
      [2] = "Max jump and aerial control."
    },
    [28] = {
      name = "Long Throw",
      [1] = "Longer throw-ins.",
      [2] = "Max distance on throw-ins."
    },
    [29] = {
      name = "Acrobatic",
      [1] = "Better volley accuracy.",
      [2] = "More accurate acrobatic volleys."
    },
  },
    ["Goalkeeping"] = {
    [30] = {
      name = "Far Throw",
      [1] = "Farther, more accurate throws.",
      [2] = "Max distance and accuracy."
    },
    [31] = {
      name = "Footwork",
      [1] = "More foot-based saves.",
      [2] = "Frequent, precise foot saves."
    },
    [32] = {
      name = "Cross Claimer",
      [1] = "Better at catching crosses.",
      [2] = "More aggressive cross claims."
    },
    [33] = {
      name = "Rush Out",
      [1] = "More aggressive rushes.",
      [2] = "Quicker decisions off the line."
    },
    [34] = {
      name = "Far Reach",
      [1] = "Increased reach on shots.",
      [2] = "Max reach for long shots."
    },
    [35] = {
      name = "Deflector",
      [1] = "Guides deflections safely.",
      [2] = "Directs deflections to safe spots."
    }
  },
  ["positions"] = {
    ["GK"] = "Goalkeeper",
    ["CB"] = "Center-Back",
    ["LB"] = "Left-Back",
    ["RB"] = "Right-Back",
    ["LWB"] = "Left Wing-Back",
    ["RWB"] = "Right Wing-Back",
    ["LM"] = "Left Midfielder",
    ["CM"] = "Center Midfielder",
    ["CDM"] = "Defensive Midfielder",
    ["CAM"] = "Attacking Midfielder",
    ["RM"] = "Right Midfielder",
    ["LW"] = "Left Wing",
    ["RW"] = "Right Wing",
    ["LF"] = "Left Forward",
    ["RF"] = "Right Forward",
    ["CF"] = "Center Forward",
    ["ST"] = "Striker"
  },
  -- add:
  -- 1. Stadiums: info.stadiums = { ... }
  -- 2. Managers: info.managers = { ... }
  -- 3. Referees: info.referees = { ... }
  -- 4. Tactics: info.tactics = { ... }
  -- 5. Kits: info.kits = { ... }
  -- 6. Achievements: info.achievements = { ... }
  -- 7. Events: info.events = { ... }
  -- 8. Sponsors: info.sponsors = { ... }
  -- 9. Match types: info.matchtypes = { ... }
  -- 10. Stadium locations: info.stadiumlocations = { ... }
}

print(info)

