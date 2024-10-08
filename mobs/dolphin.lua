local S = xocean.S
local l_water_level = (tonumber(minetest.settings:get("water_level")) or 1) - 2

mobs:register_mob("xocean:dolphin", {
	type = "animal",
	attack_type = "dogfight",
	damage = 1,
	visual_size = {x = 15, y = 15, z = 15},
	reach = 3,
	hp_min = 20,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.75, -0.5, -0.75, 0.75, 0.5, 0.75},
	visual = "mesh",
	mesh = "dolphin.b3d",
	textures = {
		{"mobs_dolphin.png"},
	},
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 2, max = 4},
	},
	sounds = {
		random = "dolphin_call",
		distance = 700,
	},
	stay_near = {nodes = "default:water_source", chance = 5},
	makes_footstep_sound = false,
	walk_velocity = 4,
	run_velocity = 6,
	fly = true,
	fly_in = "default:water_source",
	jump = false,
	stepheight = 0.1,
	fall_speed = 0,
	rotate = 90,
	view_range = 30,
	water_damage = 0,
	lava_damage = 10,
	air_damage = 1,
	jump = false,
	stepheight = 0.1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 25,
		stand_start = 40,
		stand_end = 100,
		walk_start = 40,
		walk_end = 100,
		run_start = 40,
		run_end = 100,
	},
})

if not xocean.custom_spawn then
	mobs:spawn_specific(
		"xocean:dolphin",
		{"default:water_source"},
		{"default:water_flowing", "default:water_source"},
		5,
		20,
		30,
		10000,
		2,
		-31000,
		l_water_level
	)
end

mobs:register_egg("xocean:dolphin", S("Dolphin"), "xocean_stone.png", 1)
