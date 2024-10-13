cfg = {}

cfg['marker'] = true

cfg['markerBlip'] = 26

cfg['vehicles'] = {
    -- Cars
    ["asbo"] = { name = "Asbo", price = 10000, type = "Civil" },
    ["adder"] = { name = "Adder", price = 1000000, type = "Civil" },
    ["alpha"] = { name = "Alpha", price = 150000, type = "Civil" },
    ["ardent"] = { name = "Ardent", price = 1150000, type = "Civil" },
    ["autarch"] = { name = "Autarch", price = 1955000, type = "Civil" },
    ["banshee"] = { name = "Banshee", price = 105000, type = "Civil" },
    ["bullet"] = { name = "Bullet", price = 155000, type = "Civil" },
    ["cheetah"] = { name = "Cheetah", price = 650000, type = "Civil" },
    ["cyclone"] = { name = "Cyclone", price = 1890000, type = "Civil" },
    ["entity2"] = { name = "Entity XXR", price = 2305000, type = "Civil" },
    ["entityxf"] = { name = "Entity XF", price = 795000, type = "Civil" },
    ["fmj"] = { name = "FMJ", price = 1750000, type = "Civil" },
    ["gp1"] = { name = "GP1", price = 1260000, type = "Civil" },
    ["infernus"] = { name = "Infernus", price = 440000, type = "Civil" },
    ["italigtb"] = { name = "Itali GTB", price = 1189000, type = "Civil" },
    ["nero"] = { name = "Nero", price = 1440000, type = "Civil" },
    ["osiris"] = { name = "Osiris", price = 1950000, type = "Civil" },
    ["penetrator"] = { name = "Penetrator", price = 880000, type = "Civil" },
    ["pfister811"] = { name = "Pfister 811", price = 1135000, type = "Civil" },
    ["prototipo"] = { name = "X80 Proto", price = 2700000, type = "Civil" },
    ["reaper"] = { name = "Reaper", price = 1595000, type = "Civil" },
    ["sc1"] = { name = "SC1", price = 1603000, type = "Civil" },
    ["t20"] = { name = "T20", price = 2200000, type = "Civil" },
    ["tempesta"] = { name = "Tempesta", price = 1329000, type = "Civil" },
    ["tezeract"] = { name = "Tezeract", price = 2825000, type = "Civil" },
    ["turismor"] = { name = "Turismo R", price = 500000, type = "Civil" },
    ["tyrant"] = { name = "Tyrant", price = 2515000, type = "Civil" },
    ["vacca"] = { name = "Vacca", price = 240000, type = "Civil" },
    ["vagner"] = { name = "Vagner", price = 1535000, type = "Civil" },
    -- ["visione"] = { name = "Visione", price = 2250000, type = "Civil" },
    -- ["voltic"] = { name = "Voltic", price = 150000, type = "Civil" },
    -- ["xa21"] = { name = "XA-21", price = 2375000, type = "Civil" },
    -- ["zentorno"] = { name = "Zentorno", price = 725000, type = "Civil" },

    -- Helicopters
    ["buzzard"] = { name = "Buzzard Attack Chopper", price = 1750000, type = "Elicoptere" },
    ["cargobob"] = { name = "Cargobob", price = 1790000, type = "Elicoptere" },
    ["frogger"] = { name = "Frogger", price = 1300000, type = "Elicoptere" },
    ["havok"] = { name = "Havok", price = 2300000, type = "Elicoptere" },
    ["maverick"] = { name = "Maverick", price = 780000, type = "Elicoptere" },
    ["savage"] = { name = "Savage", price = 2593500, type = "Elicoptere" },
    ["seasparrow"] = { name = "Sea Sparrow", price = 1815000, type = "Elicoptere" },
    ["supervolito"] = { name = "SuperVolito", price = 2113000, type = "Elicoptere" },
    ["swift"] = { name = "Swift", price = 1500000, type = "Elicoptere" },
    ["volatus"] = { name = "Volatus", price = 2295000, type = "Elicoptere" },

    -- Planes
    ["alphaz1"] = { name = "Alpha-Z1", price = 2121650, type = "Avioane" },
    ["besra"] = { name = "Besra", price = 1150000, type = "Avioane" },
    ["cuban800"] = { name = "Cuban 800", price = 240000, type = "Avioane" },
    ["dodo"] = { name = "Dodo", price = 500000, type = "Avioane" },
    ["duster"] = { name = "Duster", price = 275000, type = "Avioane" },
    ["howard"] = { name = "Howard NX-25", price = 1296000, type = "Avioane" },
    ["hydra"] = { name = "Hydra", price = 3990000, type = "Avioane" },
    ["luxor"] = { name = "Luxor", price = 1625000, type = "Avioane" },
    ["mammatus"] = { name = "Mammatus", price = 300000, type = "Avioane" },
    ["miljet"] = { name = "Miljet", price = 1700000, type = "Avioane" },
    ["nimbus"] = { name = "Nimbus", price = 1900000, type = "Avioane" },
    ["shamal"] = { name = "Shamal", price = 1150000, type = "Avioane" },
    ["titan"] = { name = "Titan", price = 2000000, type = "Avioane" },
    ["velum"] = { name = "Velum", price = 450000, type = "Avioane" },
    ["vestra"] = { name = "Vestra", price = 950000, type = "Avioane" },

    -- Vans
    ["bison"] = { name = "Bison", price = 30000, type = "Dube" },
    ["bobcatxl"] = { name = "Bobcat XL", price = 23000, type = "Dube" },
    ["burrito"] = { name = "Burrito", price = 15000, type = "Dube" },
    ["gburrito"] = { name = "Gang Burrito", price = 65000, type = "Dube" },
    ["journey"] = { name = "Journey", price = 15000, type = "Dube" },
    ["minivan"] = { name = "Minivan", price = 30000, type = "Dube" },
    ["paradise"] = { name = "Paradise", price = 25000, type = "Dube" },
    ["rumpo"] = { name = "Rumpo", price = 13000, type = "Dube" },
    ["speedo"] = { name = "Speedo", price = 16000, type = "Dube" },
    ["surfer"] = { name = "Surfer", price = 11000, type = "Dube" },
    ["youga"] = { name = "Youga", price = 16000, type = "Dube" }
}

cfg['garage_types'] = {
    ["Civil"] = {
        _config = { vtype = "ds", blipid = 524, blipcolor = 0, iconColor = { 255, 255, 255, 150 }, text = "Acceseaza garajul personal" },
    },

    ["Avioane"] = {
        _config = { vtype = "avion", blipid = 307, blipcolor = 0, icon = 7, iconColor = { 255, 255, 255, 150 }, text = "Acceseaza hangar avioane" },
    },

    ["Elicoptere"] = {
        _config = { vtype = "elicopter", blipid = 64, blipcolor = 0, icon = 34, iconColor = { 255, 255, 255, 150 }, text = "Acceseaza hangar elicoptere" },
    },

    ["Dube"] = {
        _config = { vtype = "van", blipid = 616, blipcolor = 0, iconColor = { 255, 255, 255, 150 } },
    },

    ["Camioane"] = {
        _config = { vtype = "truck", blipid = 477, blipcolor = 0, iconColor = { 255, 255, 255, 150 } },
    }
}

cfg['garages'] = {
    { "emergency",             vector3(294.35220336914, -612.34655761719, 43.375919342041) },
    { "emergency",             vector3(1762.2507324219, 3623.0727539063, 34.677394866943) },
    { "emergency",             vector3(-261.55010986328, 6344.2763671875, 32.426200866699) },

    { "police",                vector3(453.37313842773, -1020.825012207, 28.335729598999) },
    { "police",                vector3(1854.3416748047, 3699.3210449219, 33.905464172363) },
    { "police",                vector3(-449.02169799805, 5995.4760742188, 31.340524673462) },

    { "Emergency Helicopters", vector3(351.61227416992, -588.17626953125, 74.164215087891) },
    { "Emergency Helicopters", vector3(-252.19369506836, 6319.1459960938, 39.659591674805) },
    --{"Emergency Helicopters", vector3(1796.7532958984,3611.5551757813,34.814083099365)},

    { "Police Helicopters",    vector3(449.28994750977, -981.22943115234, 43.691677093506) },
    { "Police Helicopters",    vector3(3104.2346191406, -4733.8051757813, 15.261765480042) },
    { "Police Helicopters",    vector3(-475.55993652344, 5988.3740234375, 31.336685180664) },
    { "Police Helicopters",    vector3(1833.5070800781, 3668.9536132813, 38.930557250977) },

    { "Emergency Dock",        vector3(-857.33172607422, -1337.4437255859, -0.50527447462082) },
    { "Emergency Dock",        vector3(1495.0102539063, 3855.8095703125, 29.773685455322) },
    { "Emergency Dock",        vector3(-282.79190063477, -2762.7126464844, 0.0070189046673477) },

    { "Police Dock",           vector3(3092.8122558594, -4803.6430664063, -0.28287208080292) },
    { "Police Dock",           vector3(1460.4901123047, 3803.498046875, 29.646169662476) },
    { "Police Dock",           vector3(-277.6728515625, -2734.3754882812, 1.55046729147434) },
    { "Police Dock",           vector3(-851.7216796875, -1354.4996337891, -0.61154335737228) },

    { "Avioane",               vector3(1731.7465820312, 3310.8176269531, 41.223457336426) },
    { "Avioane",               vector3(-2251.0561523438, 3248.6369628906, 32.810207366943) },
    { "Avioane",               vector3(-980.078125, -2995.7172851562, 13.945067405701) },
    { "Avioane",               vector3(4449.591796875, -4488.6391601562, 4.2158517837524) },
    { "Avioane",               vector3(2133.388671875, 4783.3530273438, 40.970314025879) },

    { "Elicoptere",            vector3(4487.2485351562, -4451.7836914062, 4.1423797607422) },
    { "Elicoptere",            vector3(-1112.4562988281, -2883.9125976562, 13.946009635925) },
    { "Elicoptere",            vector3(-1145.9416503906, -2864.2241210938, 13.946026802063) },
    { "Elicoptere",            vector3(-1178.0534667969, -2845.5378417969, 13.945781707764) },
    { "Elicoptere",            vector3(1770.0776367188, 3239.4909667969, 42.131782531738) },
    { "Elicoptere",            vector3(-1876.9534912109, 2805.4204101563, 32.806484222412) },
    { "Elicoptere",            vector3(-724.57415771484, -1444.04296875, 5.0006771087646) },
    { "Elicoptere",            vector3(2132.7233886719, 4811.4926757812, 41.191143035889) },
    { "Elicoptere",            vector3(4888.5395507812, -5736.6665039062, 26.35089302063) },
    { "Elicoptere",            vector3(4881.8139648438, -5282.5239257812, 8.4240312576294) },

    { "Boat Garage",           vector3(-798.18200683594, -1503.2603759766, 0.2006773352623) },
    { "Boat Garage",           vector3(1487.3818359375, 3843.1201171875, 29.084465026855) },
    { "Boat Garage",           vector3(90.720680236816, -2456.4106445312, -0.039310656487942) },
    { "Boat Garage",           vector3(769.70947265625, -2884.8823242188, 0.44043385982513) },
    { "Boat Garage",           vector3(-1595.4564208984, 5264.51171875, -0.58683753013611) },
    { "Boat Garage",           vector3(1154.0511474609, -2890.576171875, -0.12446086853743) },
    { "Boat Garage",           vector3(1191.4334716797, -2892.7866210938, -0.050396222621202) },
    { "Boat Garage",           vector3(1283.6630859375, -3051.353515625, -1.2101812362671) },
    { "Boat Garage",           vector3(1305.5963134766, -3084.4794921875, -0.18625368177891) },
    { "Boat Garage",           vector3(1308.7220458984, -3121.7973632812, 0.48320934176445) },
    { "Boat Garage",           vector3(1305.6568603516, -3175.3168945312, 0.43246304988861) },
    { "Boat Garage",           vector3(1307.203125, -3240.9831542969, 0.19188338518143) },
    { "Boat Garage",           vector3(1307.1076660156, -3306.3784179688, 0.19188338518143) },
    { "Boat Garage",           vector3(1306.5037841797, -3344.8642578125, -0.042077094316483) },
    { "Boat Garage",           vector3(1276.9735107422, -3359.1223144531, -0.012352215126157) },
    { "Boat Garage",           vector3(1238.3583984375, -3360.439453125, -0.41591718792915) },
    { "Boat Garage",           vector3(1201.3984375, -3360.3217773438, -0.010589831508696) },
    { "Boat Garage",           vector3(-229.75573730469, -2699.4777832031, -0.91271591186523) },
    { "Boat Garage",           vector3(-975.00512695312, -1387.943359375, -0.47474324703217) },
    { "Boat Garage",           vector3(-724.02484130859, -1362.5754394531, -0.47547855973244) },
    { "Boat Garage",           vector3(-441.73147583008, -2408.9001464844, -0.78587114810944) },
    { "Boat Garage",           vector3(-1797.2841796875, -1232.1213378906, -0.45382815599442) },
    { "Boat Garage",           vector3(-3427.7629394531, 941.37994384766, -0.18739779293537) },
    { "Boat Garage",           vector3(3856.0170898438, 4447.01171875, -0.47529324889183) },
    { "Boat Garage",           vector3(1334.9819335938, 4258.7778320312, 29.679903030396) },

    { "Camioane",              vector3(-164.35456848145, -2686.9711914062, 6.0122027397156) },
    { "Camioane",              vector3(848.93804931641, -3209.7377929688, 5.9008188247681) },
    { "Camioane",              vector3(1245.2399902344, -3142.3081054688, 5.5633797645569) },
    { "Remorci",               vector3(1245.6538085938, -3135.6850585938, 5.5923504829407) },
    { "Remorci",               vector3(-163.44906616211, -2707.6149902344, 6.009313583374) },
    { "Remorci",               vector3(827.162109375, -3209.7260742188, 5.9008121490479) },

    { "Dube",                  vector3(136.83715820312, -2477.4663085938, 5.999988079071) },
    { "Dube",                  vector3(834.57922363281, -3208.6164550781, 5.9008193016052) },
    { "Dube",                  vector3(1245.3969726562, -3148.8442382812, 5.5744276046753) },


    { "Cayo",                  vector3(4501.7587890625, -4547.716796875, 4.0278363227844) },

    --LS
    { "Civil",              vector3(-2193.0698242188,3291.6391601562,32.818073272705) },

    --MAFIA/GANG
    { "Garaj Sindicat",        vector3(372.4235534668, 4.0192313194275, 82.981994628906),     hidden = true },
    { "Helipad Sindicat",      vector3(419.5793762207, 2.751264333725, 160.39427185059),      hidden = true },
}