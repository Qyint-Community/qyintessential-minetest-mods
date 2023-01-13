--[[
        -------------
        BASIC WEAPONS
        -------------
]]
-- Humans --
minetest.register_tool("qyintessential_warcraft:knights_lance", {
    description = "[Alliance] Knights Lance", -- Regular Weapon Type
    inventory_image = "knights_lance_nbl.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 2,    
		max_drop_level = 1,
		damage_groups = {fleshy = 9},
        punch_attack_uses = 240,
	},
    _mcl_diggroups = {
        swordy = { speed = 2, level = 1, uses = 240 },
        swordy_cobweb = { speed = 2, level = 1, uses = 240 }
    },
})

minetest.register_tool("qyintessential_warcraft:rifle", {
    description = "[Alliance] Rifle", -- Ranged Weapon using Gunpowder but dealing more Damage
    inventory_image = "rifle.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 4,
		max_drop_level = 1,
		damage_groups = {fleshy = 5.5},
        punch_attack_uses = 200,
	},
    _mcl_diggroups = {
        swordy = { speed = 2, level = 1, uses = 200 },
        swordy_cobweb = { speed = 2, level = 1, uses = 200 }
    },
    _tt_help = "Can shoot with Gunpowder."
})

minetest.register_tool("qyintessential_warcraft:gryphon_rider_hammer", {
    description = "[Alliance +] Gryphon Rider Hammer", -- = Iron Pickaxe, also summons a lightning when hitting Players with a cooldown
    inventory_image = "gryphon_rider_hammer.png",
    groups = { weapon=1, pickaxe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 3,
		max_drop_level = 1,
		damage_groups = {fleshy = 7},
        punch_attack_uses = 350,
	},
    _mcl_diggroups = {
        pickaxey = { speed = 7, level = 4, uses = 350 },
    },
    _tt_help = "Can summon a Lightning when punching an Enemy, Iron Pickaxe Strength"
})

minetest.register_tool("qyintessential_warcraft:priest_staff", {
    description = "[Alliance *] Priest Staff", -- NO USE YET
    inventory_image = "priest_staff.png",
    groups = { weapon=10},
    _tt_help = "Currently does nothing lol"
})

minetest.register_tool("qyintessential_warcraft:spell_breaker_blade", {
    description = "[Alliance] Spell Breaker Blade", -- Faster Weapon, needs Balancing
    inventory_image = "spell_breaker_blade.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level = 1,
		damage_groups = {fleshy = 6},
        punch_attack_uses = 200,
	},
    _mcl_diggroups = {
        swordy = { speed = 4, level = 1, uses = 200 },
        swordy_cobweb = { speed = 4, level = 1, uses = 200 }
    },
})

minetest.register_tool("qyintessential_warcraft:dragonhawk_rider_lance", {
    description = "[Alliance +] Dragonhawk Rider Lance", -- Stronger Knights Lance, Fire Effect
    inventory_image = "dragonhawk_rider_lance.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 2,    
		max_drop_level = 1,
		damage_groups = {fleshy = 11},
        punch_attack_uses = 250,
	},
    _mcl_diggroups = {
        swordy = { speed = 2, level = 1, uses = 250 },
        swordy_cobweb = { speed = 2, level = 1, uses = 250 }
    },
    _tt_help = "Sets Enemies on Fire"
})


-- Orcs --
minetest.register_tool("qyintessential_warcraft:raider_blade", {
    description = "[Horde] Raider Blade", -- = Iron Pickaxe
    inventory_image = "raider_blade.png",
    groups = { weapon=1, pickaxe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level = 1,
		damage_groups = {fleshy = 8.5},
        punch_attack_uses = 400,
	},
    _mcl_diggroups = {
        pickaxey = { speed = 5, level = 4, uses = 400 },
    },
    _tt_help = "Iron Pickaxe Strength"
})

minetest.register_tool("qyintessential_warcraft:troll_spear", {
    description = "[Horde] Troll Spear", -- Throwable
    inventory_image = "troll_spear.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level = 1,
        groupcaps = {},
		damage_groups = {fleshy = 6},
        punch_attack_uses = 300,
	},
    _tt_help = "Can be thrown at Enemies"
})

minetest.register_tool("qyintessential_warcraft:wind_rider_spear", {
    description = "[Horde +] Wind Rider Spear", -- Can shoot smth
    inventory_image = "wind_rider_spear.png",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
        groupcaps = {},
		damage_groups = {fleshy = 6},
        punch_attack_uses = 300,
	},
    _tt_help = "Can shoot something"
})

minetest.register_tool("qyintessential_warcraft:witch_doctor_staff", {
    description = "[Horde *] Witch Doctor Staff", -- NO USE YET
    inventory_image = "witch_doctor_staff.png",
    groups = { weapon=10},
    _tt_help = "Currently does nothing lol"
})


-- Undead --
minetest.register_tool("qyintessential_warcraft:acolytes_knife", {
    description = "[Undead] Acolytes Knife", -- Can turn you invisible
    inventory_image = "acolytes_knife.png",
    _tt_help = "Can turn you invisible",
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 1,
		damage_groups = {fleshy = 7},
        punch_attack_uses = 240,
	},
    _mcl_diggroups = {
        swordy = { speed = 4, level = 1, uses = 240 },
        swordy_cobweb = { speed = 4, level = 1, uses = 240 }
    },
})


-- Nightelf --


-- Other --



--[[
        ------------
        BASIC SPELLS
        ------------
]]



--[[
        ---------
        HERO SHIT
        ---------
]]
-- Humans --
minetest.register_tool("qyintessential_warcraft:paladins_hammer", {
    description = "{ALLIANCE HERO} Paladins Hammer", -- = Iron Pickaxe, Slow as Fuck, Healing Effect
    inventory_image = "paladins_hammer.png",
	light_source = 10,
    groups = { weapon=10, pickaxe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 4,
		max_drop_level = 1,
		damage_groups = {fleshy = 11},
        punch_attack_uses = 550,
	},
    _mcl_diggroups = {
        pickaxey = { speed = 8, level = 4, uses = 550 },
    },
    _tt_help = "HERO WEAPON - Healing Effect, Iron Pickaxe Strength"
})

minetest.register_tool("qyintessential_warcraft:archmage_staff", {
    description = "{ALLIANCE HERO} Archmage Staff", -- Spawns Water Spirits
    inventory_image = "archmage_staff.png",
	light_source = 10,
    groups = { weapon=10},
    _tt_help = "HERO WEAPON - Can summon a Water Elemental Spirit"
})

minetest.register_tool("qyintessential_warcraft:mountain_king_hammer", {
    description = "{ALLIANCE HERO} Mountain King Hammer", -- = Iron Pickaxe, Can be thrown
    inventory_image = "mountain_king_hammer.png",
	light_source = 10,
    groups = { weapon=10, pickaxe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 2.5,
		max_drop_level = 1,
		damage_groups = {fleshy = 10},
        punch_attack_uses = 500,
	},
    _mcl_diggroups = {
        pickaxey = { speed = 8, level = 4, uses = 550 },
    },
    _tt_help = "HERO WEAPON - Can be thrown at Enemies, Iron Pickaxe Strength"
})

minetest.register_tool("qyintessential_warcraft:mountain_king_axe", {
    description = "{ALLIANCE HERO} Mountain King Axe", -- = Iron Pickaxe, Can be thrown
    inventory_image = "mountain_king_axe.png",
	light_source = 10,
    groups = { weapon=10, axe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 3,
		max_drop_level = 1,
		damage_groups = {fleshy = 11},
        punch_attack_uses = 450,
	},
    _mcl_diggroups = {
        axey = { speed = 8, level = 4, uses = 450 },
    },
    _tt_help = "HERO WEAPON - Can give you a Defense Boost"
})


-- Orcs --
minetest.register_tool("qyintessential_warcraft:wind_blade", {
    description = "{HORDE HERO} Blade Masters Wind Blade", -- Invisibility Effect
    inventory_image = "wind_blade.png",
	light_source = 10,
    groups = { weapon=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 0.5,    
		max_drop_level = 1,
		damage_groups = {fleshy = 9},
        punch_attack_uses = 500,
	},
    _mcl_diggroups = {
        swordy = { speed = 6, level = 1, uses = 500 },
        swordy_cobweb = { speed = 6, level = 1, uses = 500 }
    },
    _tt_help = "HERO WEAPON - Can turn you invisible"
})

minetest.register_tool("qyintessential_warcraft:wind_katana", {
    description = "{HORDE HERO} Blade Masters Wind Katana", -- Invisibility Effect
    inventory_image = "wind_katana.png",
    groups = { weapon=1, dig_speed_class=2 },
	light_source = 10,
	tool_capabilities = {
		full_punch_interval = 0.4,    
		max_drop_level = 1,
		damage_groups = {fleshy = 8},
        punch_attack_uses = 500,
	},
    _mcl_diggroups = {
        swordy = { speed = 10, level = 1, uses = 500 },
        swordy_cobweb = { speed = 10, level = 1, uses = 500 }
    },
    _tt_help = "HERO WEAPON - Can make you faster"
})

minetest.register_tool("qyintessential_warcraft:thralls_hammer", {
    description = "{HORDE HERO} Doomhammer", -- = Iron Pickaxe, Can summon Wolve-Spirits
    inventory_image = "thralls_hammer.png",
	light_source = 10,
    groups = { weapon=10, pickaxe=1, dig_speed_class=2 },
	tool_capabilities = {
		full_punch_interval = 2.5,
		max_drop_level = 1,
		damage_groups = {fleshy = 9},
        punch_attack_uses = 550,
	},
    _mcl_diggroups = {
        pickaxey = { speed = 8, level = 4, uses = 550 },
    },
    _tt_help = "HERO WEAPON - Can summon Wolve-Spirits, Iron Pickaxe Strength"
})

-- Undead --


-- Nightelf --


-- Other --



--[[
        ----
        MOBS
        ----
]]



--[[
        ----------
        STRUCTURES
        ----------
]]
