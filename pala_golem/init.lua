minetest.log("action", "[pala_golem] loading...")

--local S = minetest.get_translator(minetest.get_current_modname())

--[[mobs:register_mob("pala_golem:guardian_golem", {
	type = "npc",
	spawn_class = "passive",
	passive = true,
	hp_min = 100,
	hp_max = 100,
	breath_max = -1,
	collisionbox = {-0.7, -0.01, -0.7, 0.7, 2.69, 0.7},
	visual = "mesh",
	mesh = "mobs_mc_iron_golem.b3d",
	textures = {
		{"mobs_mc_iron_golem.png"},
	},
	visual_size = {x=3, y=3},
	makes_footstep_sound = true,
	-- TODO: sounds
	view_range = 16,
	stepheight = 1.1,
	owner = "",
	order = "follow",
	floats = 0,
	walk_velocity = 0.6,
	run_velocity = 1.2,
	-- Approximation
	damage = 14,
	reach = 3,
	group_attack = true,
	attacks_monsters = true,
	attack_type = "dogfight",
	--drops = {
	--	{name = mobs_mc.items.iron_ingot,
	--	chance = 1,
	--	min = 3,
	--	max = 5,},
	--	{name = mobs_mc.items.poppy,
	--	chance = 1,
	--	min = 0,
	--	max = 2,},
	--},
	fall_damage = 0,
	animation = {
		stand_speed = 15, walk_speed = 15, run_speed = 25, punch_speed = 15,
		stand_start = 0,		stand_end = 0,
		walk_start = 0,		walk_end = 40,
		run_start = 0,		run_end = 40,
		punch_start = 40,  punch_end = 50,
	},
	jump = true,
})


-- spawn eggs
mobs:register_egg("pala_golem:guardian_golem", S("Guardian Golem"), "mobs_mc_spawn_icon_iron_golem.png", 0)]]

--This summons an iron golen if placing the pumpkin created an iron golem summon pattern:

--...
--IPI
--.I.

--P = Guardian Block
--I = Paladium block
--. = Air
--]]

-- mobs_mc.tools.check_pala_golem_summon = function(pos)
	-- local checks = {
		-- -- These are the possible placement patterns, with offset from the pumpkin block.
		-- -- These tables include the positions of the iron blocks (1-4) and air blocks (5-8)
		-- -- 4th element is used to determine spawn position.
		-- -- If a 9th element is present, that one is used for the spawn position instead.
		-- -- Standing (x axis)
		-- {
			-- {x=-1, y=-1, z=0}, {x=1, y=-1, z=0}, {x=0, y=-1, z=0}, {x=0, y=-2, z=0}, -- iron blocks
			-- {x=-1, y=0, z=0}, {x=1, y=0, z=0}, {x=-1, y=-2, z=0}, {x=1, y=-2, z=0}, -- air
		-- },
		-- -- Upside down standing (x axis)
		-- {
			-- {x=-1, y=1, z=0}, {x=1, y=1, z=0}, {x=0, y=1, z=0}, {x=0, y=2, z=0},
			-- {x=-1, y=0, z=0}, {x=1, y=0, z=0}, {x=-1, y=2, z=0}, {x=1, y=2, z=0},
			-- {x=0, y=0, z=0}, -- Different offset for upside down pattern
		-- },

		-- -- Standing (z axis)
		-- {
			-- {x=0, y=-1, z=-1}, {x=0, y=-1, z=1}, {x=0, y=-1, z=0}, {x=0, y=-2, z=0},
			-- {x=0, y=0, z=-1}, {x=0, y=0, z=1}, {x=0, y=-2, z=-1}, {x=0, y=-2, z=1},
		-- },
		-- -- Upside down standing (z axis)
		-- {
			-- {x=0, y=1, z=-1}, {x=0, y=1, z=1}, {x=0, y=1, z=0}, {x=0, y=2, z=0},
			-- {x=0, y=0, z=-1}, {x=0, y=0, z=1}, {x=0, y=2, z=-1}, {x=0, y=2, z=1},
			-- {x=0, y=0, z=0},
		-- },

		-- -- Lying
		-- {
			-- {x=-1, y=0, z=-1}, {x=0, y=0, z=-1}, {x=1, y=0, z=-1}, {x=0, y=0, z=-2},
			-- {x=-1, y=0, z=0}, {x=1, y=0, z=0}, {x=-1, y=0, z=-2}, {x=1, y=0, z=-2},
		-- },
		-- {
			-- {x=-1, y=0, z=1}, {x=0, y=0, z=1}, {x=1, y=0, z=1}, {x=0, y=0, z=2},
			-- {x=-1, y=0, z=0}, {x=1, y=0, z=0}, {x=-1, y=0, z=2}, {x=1, y=0, z=2},
		-- },
		-- {
			-- {x=-1, y=0, z=-1}, {x=-1, y=0, z=0}, {x=-1, y=0, z=1}, {x=-2, y=0, z=0},
			-- {x=0, y=0, z=-1}, {x=0, y=0, z=1}, {x=-2, y=0, z=-1}, {x=-2, y=0, z=1},
		-- },
		-- {
			-- {x=1, y=0, z=-1}, {x=1, y=0, z=0}, {x=1, y=0, z=1}, {x=2, y=0, z=0},
			-- {x=0, y=0, z=-1}, {x=0, y=0, z=1}, {x=2, y=0, z=-1}, {x=2, y=0, z=1},
		-- },


	-- }

	-- for c=1, #checks do
		-- -- Check all possible patterns
		-- local ok = true
		-- -- Check iron block nodes
		-- for i=1, 4 do
			-- local cpos = vector.add(pos, checks[c][i])
			-- local node = minetest.get_node(cpos)
			-- if node.name ~= mobs_mc.items.iron_block then
				-- ok = false
				-- break
			-- end
		-- end
		-- -- Check air nodes
		-- for a=5, 8 do
			-- local cpos = vector.add(pos, checks[c][a])
			-- local node = minetest.get_node(cpos)
			-- if node.name ~= "air" then
				-- ok = false
				-- break
			-- end
		-- end
		-- -- Pattern found!
		-- if ok then
			-- -- Remove the nodes
			-- minetest.remove_node(pos)
			-- core.check_for_falling(pos)
			-- for i=1, 4 do
				-- local cpos = vector.add(pos, checks[c][i])
				-- minetest.remove_node(cpos)
				-- core.check_for_falling(cpos)
			-- end
			-- -- Summon iron golem
			-- local place
			-- if checks[c][9] then
				-- place = vector.add(pos, checks[c][9])
			-- else
				-- place = vector.add(pos, checks[c][4])
			-- end
			-- place.y = place.y - 0.5
			-- minetest.add_entity(place, "pala_golem:golem")
			-- break
		-- end
	-- end
-- end

minetest.log("action", "[pala_golem] loaded succesfully")