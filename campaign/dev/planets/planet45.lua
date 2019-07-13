--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/terran01.png"
	
	local planetData = {
		name = "Old Falsell",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.57,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.28,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Radiated",
			radius = "8390 km",
			primary = "Blank",
			primaryType = "K1VI",
			milRating = 1,
			feedbackLink = "http://zero-k.info/Forum/Thread/24530",
			text = [[In this battle you start at a large numerical and economical disadvantage. However, the high plateaus on this map will give your Spiders an edge, especially the heavy Crab riot/skirmisher.]]
		},
		tips = {
			{
				image = "unitpics/spidercrabe.png",
				text = [[The Crab curls up into a much more durable form when stationary. Do not move Crabs when they are attacked.]]
			},
			{
				image = "luaui/images/commands/level.png",
				text = [[Due to their ballistic projectile, Crabs gain range when shooting downwards. Place them on the edge of cliffs (or terraform) to take advantage of this.]]
			},
			{
				image = "unitpics/spidercon.png",
				text = [[The Spider factory's Weaver constructors are slow, but they have high buildpower, all-terrain movement (obviously), and a short-range radar.]]
			},
		},
		gameConfig = {
			mapName = "Hide_and_Seek_v03",
			playerConfig = {
				startX = 4250,
				startZ = 5450,
				allyTeam = 0,
				facplop = false,
				commanderParameters = {
					facplop = false,
					defeatIfDestroyedObjectiveID = 2,
				},
				extraUnlocks = {
					"factoryspider",
					"spidercon",
					"spidercrabe",
					"spideraa",
					"spiderscout", -- One unlock from each of the other spider missions, so no single mission is 'useless'.
					"spiderriot",
					"spiderassault",
				},
				--extraAbilities = {
				--	"terraform",
				--},
				startUnits = {
					{
						name = "pw_metal",
						x = 4460,
						z = 6050,
						facing = 0,
						defeatIfDestroyedObjectiveID = 3,
					},
					{
						name = "staticmex",
						x = 3112,
						z = 6024,
						facing = 0,
					},
					{
						name = "factoryspider",
						x = 4104,
						z = 5496,
						facing = 2,
					},
					{
						name = "turretmissile",
						x = 5600,
						z = 5632,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5544,
						z = 5944,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5496,
						z = 6008,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5464,
						z = 6072,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5416,
						z = 6136,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5352,
						z = 6200,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5288,
						z = 6232,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5224,
						z = 6264,
						facing = 2,
					},
					{
						name = "energywind",
						x = 5160,
						z = 6296,
						facing = 2,
					},
					{
						name = "staticmex",
						x = 5128,
						z = 5480,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4808,
						z = 5928,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 4136,
						z = 6104,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 3896,
						z = 4760,
						facing = 0,
					},
					{
						name = "energywind",
						x = 3800,
						z = 5288,
						facing = 2,
					},
					{
						name = "energywind",
						x = 3864,
						z = 5288,
						facing = 2,
					},
					{
						name = "energywind",
						x = 3928,
						z = 5288,
						facing = 2,
					},
					{
						name = "staticcon",
						x = 3960,
						z = 5512,
						facing = 2,
						selfPatrol = true,
					},
					{
						name = "spidercon",
						x = 3950,
						z = 5680,
						facing = 3,
					},
					{
						name = "spidercon",
						x = 4100,
						z = 5680,
						facing = 3,
					},
					{
						name = "spidercon",
						x = 3808,
						z = 5400,
						facing = 2,
					},
					{
						name = "spidercon",
						x = 4350,
						z = 5480,
						facing = 0,
					},
					{
						name = "turretmissile",
						x = 3808,
						z = 5680,
						facing = 3,
					},
					{
						name = "turretmissile",
						x = 4512,
						z = 5424,
						facing = 1,
					},
					{
						name = "turretmissile",
						x = 4416,
						z = 6416,
						facing = 3,
					},
					{
						name = "spidercrabe",
						x = 4196,
						z = 5009,
						facing = 2,
					},
					{
						name = "staticradar",
						x = 3760,
						z = 5216,
						facing = 2,
					},
					{
						name = "spiderassault",
						x = 4220,
						z = 5230,
						facing = 2,
					},
					{
						name = "spiderassault",
						x = 4020,
						z = 5230,
						facing = 2,
					},
					{
						name = "spideraa",
						x = 4120,
						z = 5330,
						facing = 2,
					},
					{
						name = "spiderriot",
						x = 4220,
						z = 5330,
						facing = 2,
					},
					{
						name = "spiderriot",
						x = 4020,
						z = 5330,
						facing = 2,
					},
					{
						name = "spideraa",
						x = 4120,
						z = 5230,
						facing = 2,
					},
					{
						name = "spidercrabe",
						x = 3676,
						z = 5441,
						facing = 3,
					},
					{
						name = "energywind",
						x = 7144,
						z = 6392,
						facing = 3,
					},
					{
						name = "energywind",
						x = 7144,
						z = 6328,
						facing = 3,
					},
					{
						name = "energygeo",
						x = 6984,
						z = 7016,
						facing = 3,
					},
					{
						name = "staticmex",
						x = 6712,
						z = 7080,
						facing = 0,
					},
					{
						name = "staticmex",
						x = 7096,
						z = 6840,
						facing = 0,
					},
					{
						name = "energywind",
						x = 6808,
						z = 7096,
						facing = 3,
					},
					{
						name = "energywind",
						x = 6888,
						z = 7096,
						facing = 3,
					},
					{
						name = "energywind",
						x = 7096,
						z = 6920,
						facing = 3,
					},
					{
						name = "turretaalaser",
						x = 6696,
						z = 6760,
						facing = 3,
					},
					{
						name = "spidercrabe",
						x = 7069,
						z = 5734,
						facing = 3,
					},
					{
						name = "spidercrabe",
						x = 6504,
						z = 6817,
						facing = 3,
					},
					{
						name = "spidercon",
						x = 6883,
						z = 6880,
						facing = 0,
					},
					{
						name = "staticradar",
						x = 7104,
						z = 6128,
						facing = 3,
					},
					{
						name = "energywind",
						x = 7144,
						z = 6264,
						facing = 3,
					},
				}
			},
			aiConfig = {
				{
					startX = 2300,
					startZ = 2800,
					humanName = "Geode Hunters",
					--aiLib = "Null AI",
					--bitDependant = false,
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticcon",
						"staticradar",
						"staticmex",
						"energysolar",
						"energywind",
						"turretmissile",
						"turretlaser",
						"turretaalaser",
						"turretaaclose",
						"turretriot",
						"turretemp",
						"factoryspider",
						"spidercon",
						"spiderscout",
						"spideremp",
						"spiderriot",
						"spiderskirm",
						"spiderassault",
						"spideraa",
						"factoryjump",
						"jumpcon",
						"jumpraid",
						"jumpskirm",
						"jumpaa",
						"factorygunship",
						"gunshipcon",
						"gunshipraid",
						"gunshipbomb",
						"gunshipemp",
						"gunshipskirm",
						"gunshipaa",
						"factoryamph",
						"amphcon",
						"amphraid",
						"amphriot",
						"amphimpulse",
						"amphfloater",
						"amphaa",
						"energypylon",
					},
					difficultyDependantUnlocks = {
						[2] = {"amphassault", "gunshipheavyskirm", },
						[3] = {"amphassault", "gunshipheavyskirm", "gunshipassault", "spiderantiheavy", "jumpbomb", },
						[4] = {"amphassault", "gunshipheavyskirm", "gunshipassault", "spiderantiheavy", "jumpbomb", "jumpassault", }, 
					},
					commanderLevel = 5,
					commander = {
						name = "Yarral",
						chassis = "engineer",
						decorations = {
						  "skin_support_zebra",
						},
						modules = { 
							"commweapon_missilelauncher",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_battle_drone",
							"module_battle_drone",
							"module_adv_nano",
							"module_adv_nano",
							"module_adv_nano",
							"commweapon_personal_shield",
						}
					},
					startUnits = {
						{
							name = "energywind",
							x = 2088,
							z = 856,
							facing = 2,
						},
						{
							name = "energywind",
							x = 2024,
							z = 888,
							facing = 2,
						},
						{
							name = "energywind",
							x = 1960,
							z = 904,
							facing = 2,
						},
						{
							name = "turretheavylaser",
							x = 840,
							z = 5192,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 808,
							z = 5128,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 1624,
							z = 5512,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 1624,
							z = 5592,
							facing = 2,
						},
						{
							name = "staticradar",
							x = 3408,
							z = 816,
							facing = 2,
						},
						{
							name = "factorygunship",
							x = 328,
							z = 312,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 3496,
							z = 2776,
							facing = 2,
						},
						{
							name = "factoryspider",
							x = 6184,
							z = 1496,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 6072,
							z = 1496,
							facing = 0,
						},
						{
							name = "energygeo",
							x = 6200,
							z = 1336,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6424,
							z = 1224,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6488,
							z = 1160,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 1480,
							z = 5416,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 856,
							z = 5672,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 1560,
							z = 5560,
							facing = 1,
						},
						{
							name = "energywind",
							x = 6552,
							z = 1096,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6488,
							z = 1224,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5840,
							z = 1136,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6552,
							z = 1160,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 6400,
							z = 1280,
							facing = 0,
						},
						{
							name = "energywind",
							x = 6616,
							z = 1160,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5872,
							z = 1840,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 7000,
							z = 472,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 7016,
							z = 136,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 4720,
							z = 1136,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 5928,
							z = 1432,
							facing = 3,
						},
						{
							name = "staticmex",
							x = 6696,
							z = 72,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 6200,
							z = 1672,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 6120,
							z = 1176,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 5352,
							z = 520,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 6056,
							z = 1336,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 5064,
							z = 536,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 5024,
							z = 352,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 5392,
							z = 608,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 5440,
							z = 1040,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 5312,
							z = 1232,
							facing = 3,
						},
						{
							name = "staticradar",
							x = 5568,
							z = 2400,
							facing = 3,
						},
						{
							name = "staticcon",
							x = 2360,
							z = 2760,
							facing = 0,
						},
						{
							name = "factoryjump",
							x = 2584,
							z = 2824,
							facing = 0,
						},
						{
							name = "energygeo",
							x = 184,
							z = 184,
							facing = 2,
						},
						{
							name = "energygeo",
							x = 1016,
							z = 5800,
							facing = 2,
						},
						{
							name = "energygeo",
							x = 3848,
							z = 3512,
							facing = 2,
						},
						{
							name = "energygeo",
							x = 3208,
							z = 3640,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 344,
							z = 504,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 632,
							z = 216,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 104,
							z = 344,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 392,
							z = 72,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 344,
							z = 168,
							facing = 1,
						},
						{
							name = "factoryamph",
							x = 1048,
							z = 5592,
							facing = 1,
						},
						{
							name = "staticmex",
							x = 1144,
							z = 5768,
							facing = 0,
						},
						{
							name = "staticcon",
							x = 1128,
							z = 5848,
							facing = 1,
						},
						{
							name = "turretriot",
							x = 1240,
							z = 5656,
							facing = 1,
						},
						{
							name = "turretriot",
							x = 888,
							z = 5480,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 1128,
							z = 5960,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2040,
							z = 6600,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 1752,
							z = 6616,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3064,
							z = 3640,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 504,
							z = 7080,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 184,
							z = 7016,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3976,
							z = 3528,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 200,
							z = 6680,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 3096,
							z = 3368,
							facing = 2,
						},
						{
							name = "turretriot",
							x = 3224,
							z = 3864,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 3568,
							z = 3568,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 3488,
							z = 3824,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 2328,
							z = 5592,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 3832,
							z = 3720,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 3600,
							z = 3824,
							facing = 0,
						},
						{
							name = "turretriot",
							x = 3848,
							z = 3304,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 3552,
							z = 3328,
							facing = 2,
						},
						{
							name = "turretmissile",
							x = 3648,
							z = 3328,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 4152,
							z = 3416,
							facing = 0,
						},
						{
							name = "energypylon",
							x = 3336,
							z = 3464,
							facing = 2,
						},
						{
							name = "staticmex",
							x = 3064,
							z = 3752,
							facing = 0,
						},
						{
							name = "turretgauss",
							x = 3272,
							z = 3272,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 3288,
							z = 3640,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 3208,
							z = 3560,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 3288,
							z = 3560,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 4040,
							z = 3512,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 3960,
							z = 3464,
							facing = 2,
						},
						{
							name = "energysolar",
							x = 3992,
							z = 3592,
							facing = 2,
						},
						{
							name = "turretlaser",
							x = 2320,
							z = 5712,
							facing = 2,
						},
						{
							name = "turretemp",
							x = 5728,
							z = 2864,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5304,
							z = 1144,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5368,
							z = 1144,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5432,
							z = 1144,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5496,
							z = 1144,
							facing = 0,
						},
						{
							name = "energywind",
							x = 5560,
							z = 1144,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 2024,
							z = 6376,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1968,
							z = 6656,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 2104,
							z = 6600,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 2024,
							z = 6664,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1760,
							z = 6656,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 1736,
							z = 6712,
							facing = 0,
						},
						{
							name = "energysolar",
							x = 1816,
							z = 6664,
							facing = 0,
						},
						{
							name = "energywind",
							x = 552,
							z = 24,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 5704,
							z = 760,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 2496,
							z = 6032,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1344,
							z = 6016,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 832,
							z = 5888,
							facing = 0,
						},
						{
							name = "turretlaser",
							x = 1312,
							z = 5312,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 6056,
							z = 1704,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 1688,
							z = 6392,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 1568,
							z = 4720,
							facing = 1,
						},
						{
							name = "staticcon",
							x = 424,
							z = 168,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 128,
							z = 544,
							facing = 3,
						},
						{
							name = "turretlaser",
							x = 560,
							z = 400,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 328,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 392,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 456,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 520,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 584,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 648,
							facing = 3,
						},
						{
							name = "energywind",
							x = 24,
							z = 712,
							facing = 3,
						},
						{
							name = "turretemp",
							x = 1440,
							z = 4288,
							facing = 3,
						},
						{
							name = "turretmissile",
							x = 2688,
							z = 2480,
							facing = 3,
						},
						{
							name = "staticcon",
							x = 5976,
							z = 1336,
							facing = 3,
						},
						{
							name = "turretmissile",
							x = 1616,
							z = 2832,
							facing = 3,
						},
						{
							name = "turretmissile",
							x = 1200,
							z = 2992,
							facing = 3,
						},
						{
							name = "spiderscout",
							x = 6173,
							z = 1810,
							facing = 0,
						},
						{
							name = "staticradar",
							x = 144,
							z = 1152,
							facing = 3,
						},
						{
							name = "turretmissile",
							x = 112,
							z = 1424,
							facing = 3,
						},
						{
							name = "turretheavylaser",
							x = 6120,
							z = 2248,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 5416,
							z = 1640,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 5160,
							z = 488,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 5000,
							z = 536,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 4984,
							z = 456,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 4968,
							z = 376,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 5336,
							z = 584,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 5256,
							z = 584,
							facing = 3,
						},
						{
							name = "energysolar",
							x = 2088,
							z = 6360,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1584,
							z = 4272,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1456,
							z = 4144,
							facing = 0,
						},
						{
							name = "turretmissile",
							x = 1328,
							z = 4272,
							facing = 0,
						},
						{
							name = "turretaafar",
							x = 5184,
							z = 1120,
							facing = 0,
						},
						{
							name = "turretaalaser",
							x = 6936,
							z = 1320,
							facing = 0,
						},
						{
							name = "energywind",
							x = 232,
							z = 24,
							facing = 0,
						},
						{
							name = "energywind",
							x = 296,
							z = 24,
							facing = 0,
						},
						{
							name = "energywind",
							x = 360,
							z = 24,
							facing = 0,
						},
						{
							name = "energywind",
							x = 424,
							z = 24,
							facing = 0,
						},
						{
							name = "energywind",
							x = 488,
							z = 24,
							facing = 0,
						},
						-- Difficulty 2
						{
							name = "jumpraid",
							x = 2500,
							z = 3100,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "jumpraid",
							x = 2700,
							z = 3100,
							facing = 0,
							difficultyAtLeast = 2,
						},
						{
							name = "spidercon",
							x = 4900,
							z = 1800,
							facing = 0,
							difficultyAtLeast = 2,
						},
						-- Difficulty 3
						{
							name = "jumpraid",
							x = 2500,
							z = 3200,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "jumpraid",
							x = 2700,
							z = 3200,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "spidercon",
							x = 2200,
							z = 4800,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "amphfloater",
							x = 3600,
							z = 6800,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "amphfloater",
							x = 3600,
							z = 6900,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "amphfloater",
							x = 3600,
							z = 7000,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "amphfloater",
							x = 3600,
							z = 7100,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "gunshipassault",
							x = 2900,
							z = 1800,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "energyfusion",
							x = 7000,
							z = 290,
							facing = 0,
							difficultyAtLeast = 3,
						},
						-- Difficulty 4
						{
							name = "energyfusion",
							x = 2600,
							z = 2600,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "energyfusion",
							x = 350,
							z = 7000,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "gunshipassault",
							x = 2900,
							z = 1900,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "gunshipassault",
							x = 2900,
							z = 2000,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "jumpassault",
							x = 5900,
							z = 3400,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "jumpassault",
							x = 6000,
							z = 3400,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "jumpassault",
							x = 6100,
							z = 3400,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "amphassault",
							x = 4100,
							z = 2100,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "energysingu",
							x = 1350,
							z = 2750,
							facing = 0,
							difficultyAtLeast = 4,
						},
					}
				},
			},
			terraform = {
				{
					terraformShape = planetUtilities.TERRAFORM_SHAPE.RAMP,
					position = {4235, 431, 5561, 4383, 214, 5769},
					width = 120,
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { 
				},
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = false,
					vitalUnitTypes = {
						"energygeo",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy all enemy Geothermal Generators",
				},
				[2] = {
					description = "Protect your Commander",
				},
				[3] = {
					description = "Protect your Metal Fabricator",
				},
			},
			bonusObjectiveConfig = {
				[1] = { -- Own ten Crabs
					satisfyOnce = true,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 10,
					unitTypes = {
						"spidercrabe",
					},
					image = planetUtilities.ICON_DIR .. "spidercrabe.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.REPAIR,
					description = "Have 10 Crabs",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = { -- Make the enemy lose a factory by 12:00
					onlyCountRemovedUnits = true,
					satisfyByTime = 720,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 1,
					enemyUnitTypes = {
						"factoryamph",
						"factoryspider",
						"factorygunship",
						"factoryjump",
					},
					image = planetUtilities.ICON_DIR .. "factoryveh.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy an enemy factory before 12:00",
					experience = planetUtilities.BONUS_EXP,
				},
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factoryspider",
				"spidercon",
				"spidercrabe",
				"spideraa",
			},
			modules = {
				"module_adv_nano_LIMIT_G_1",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet
