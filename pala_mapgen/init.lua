--Amethyst
-- Common spawn
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mcl_core:stone_with_amethyst",
	wherein         = stonelike,
	clust_scarcity = 10000,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = mcl_vars.mg_overworld_min,
	y_max          = mcl_worlds.layer_to_y(16),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mcl_core:stone_with_amethyst",
	wherein         = stonelike,
	clust_scarcity = 5000,
	clust_num_ores = 2,
	clust_size     = 2,
	y_min          = mcl_vars.mg_overworld_min,
	y_max          = mcl_worlds.layer_to_y(16),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mcl_core:stone_with_amethyst",
	wherein         = stonelike,
	clust_scarcity = 10000,
	clust_num_ores = 8,
	clust_size     = 3,
	y_min          = mcl_vars.mg_overworld_min,
	y_max          = mcl_worlds.layer_to_y(16),
})

-- Rare spawn
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mcl_core:stone_with_amethyst",
	wherein         = stonelike,
	clust_scarcity = 20000,
	clust_num_ores = 1,
	clust_size     = 1,
	y_min          = mcl_worlds.layer_to_y(13),
	y_max          = mcl_worlds.layer_to_y(16),
})
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "mcl_core:stone_with_amethyst",
	wherein         = stonelike,
	clust_scarcity = 20000,
	clust_num_ores = 2,
	clust_size     = 2,
	y_min          = mcl_worlds.layer_to_y(13),
	y_max          = mcl_worlds.layer_to_y(16),
})

--Titanium
minetest.register_node("pala_paladium:stone_with_titanium", {
	description = ("Titanium Ore"),
	_doc_items_longdesc = ("Titanium ore is rare and can be found in clusters near the bottom of the world."),
	tiles = {"default_stone.png^pala_paladium_mineral_titanium.png"},
	is_ground_content = true,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1, material_stone=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 3,
	_mcl_hardness = 3,
})

minetest.register_craftitem("pala_paladium:titanium_ingot", {
	description = ("Titanium Ingot"),
	_doc_items_longdesc = ("Molten Titanium. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_titanium_ingot.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_node("pala_paladium:titaniumblock", {
	description = ("Block of Titanium"),
	_doc_items_longdesc = ("A block of Titanium is mostly a shiny decorative block but also useful as a compact storage of diamonds."),
	tiles = {"pala_paladium_titanium_block.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 5,
})

minetest.register_craft({
	output = "pala_paladium:titaniumblock",
	recipe = {
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
	}
})

minetest.register_craft({
	output = 'pala_paladium:titanium_ingot 9',
	recipe = {
		{'pala_paladium:titaniumblock'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "pala_paladium:titanium_ingot",
	recipe = "pala_paladium:stone_with_titanium",
	cooktime = 5
})

--Paladium
minetest.register_node("pala_paladium:stone_with_paladium", {
	description = ("Paladium Ore"),
	_doc_items_longdesc = ("Paladium ore is rare and can be found in clusters near the bottom of the world."),
	tiles = {"default_stone.png^pala_paladium_mineral_paladium.png"},
	is_ground_content = true,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1, material_stone=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 3,
	_mcl_hardness = 3,
})

minetest.register_craftitem("pala_paladium:paladium_ingot", {
	description = ("Paladium Ingot"),
	_doc_items_longdesc = ("Molten Paladium. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_paladium_ingot.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_node("pala_paladium:paladiumblock", {
	description = ("Block of Paladium"),
	_doc_items_longdesc = ("A block of Paladium is mostly a shiny decorative block but also useful as a compact storage of diamonds."),
	tiles = {"pala_paladium_paladium_block.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 5,
})

minetest.register_craft({
	output = "pala_paladium:titaniumblock",
	recipe = {
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
		{'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot', 'pala_paladium:titanium_ingot'},
	}
})

minetest.register_craft({
	output = 'pala_paladium:titanium_ingot 9',
	recipe = {
		{'pala_paladium:titaniumblock'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "pala_paladium:paladium_ingot",
	recipe = "pala_paladium:stone_with_paladium",
	cooktime = 5
})

--Green Paladium
minetest.register_node("pala_paladium:stone_with_gpaladium", {
	description = ("Green Paladium Ore"),
	_doc_items_longdesc = ("Green Paladium ore is rare and can be found in clusters near the bottom of the world."),
	tiles = {"default_stone.png^pala_paladium_mineral_gpaladium.png"},
	is_ground_content = true,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1, material_stone=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 3,
	_mcl_hardness = 3,
})

minetest.register_craftitem("pala_paladium:gpaladium_ingot", {
	description = ("Green Paladium Ingot"),
	_doc_items_longdesc = ("Molten Green Paladium. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_gpaladium_ingot.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_node("pala_paladium:gpaladiumblock", {
	description = ("Block of Green Paladium"),
	_doc_items_longdesc = ("A block of Green Paladium is mostly a shiny decorative block but also useful as a compact storage of diamonds."),
	tiles = {"pala_paladium_gpaladium_block.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 5,
})

minetest.register_craft({
	output = "pala_paladium:gpaladiumblock",
	recipe = {
		{'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot'},
		{'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot'},
		{'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot', 'pala_paladium:gpaladium_ingot'},
	}
})

minetest.register_craft({
	output = 'pala_paladium:gpaladium_ingot 9',
	recipe = {
		{'pala_paladium:gpaladiumblock'},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "pala_paladium:gpaladium_ingot",
	recipe = "pala_paladium:stone_with_gpaladium",
	cooktime = 5
})

--Findium
minetest.register_node("pala_paladium:stone_with_findium", {
	description = ("Findium Ore"),
	_doc_items_longdesc = ("Findium ore is rare and can be found in clusters near the bottom of the world."),
	tiles = {"default_stone.png^pala_paladium_mineral_findium.png"},
	is_ground_content = true,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1, material_stone=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 3,
	_mcl_hardness = 3,
})

minetest.register_craftitem("pala_paladium:findium_gem", {
	description = ("Findium Ingot"),
	_doc_items_longdesc = ("Findium Gem. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_findium_gem.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_node("pala_paladium:findiumblock", {
	description = ("Block of Findium"),
	_doc_items_longdesc = ("A block of Findium is mostly a shiny decorative block but also useful as a compact storage of diamonds."),
	tiles = {"pala_paladium_findiumblock.png"},
	is_ground_content = false,
	stack_max = 64,
	groups = {pickaxey=4, building_block=1},
	sounds = mcl_sounds.node_sound_stone_defaults(),
	_mcl_blast_resistance = 6,
	_mcl_hardness = 5,
})

minetest.register_craft({
	output = "pala_paladium:findiumblock",
	recipe = {
		{'pala_paladium:findium_gem', 'pala_paladium:findium_gem', 'pala_paladium:findium_gem'},
		{'pala_paladium:findium_gem', 'pala_paladium:findium_gem', 'pala_paladium:findium_gem'},
		{'pala_paladium:findium_gem', 'pala_paladium:findium_gem', 'pala_paladium:findium_gem'},
	}
})

minetest.register_craft({
	output = 'pala_paladium:findium_gem 9',
	recipe = {
		{'pala_paladium:findiumblock'},
	}
})

--Endium
minetest.register_craftitem("pala_paladium:endium_ingot", {
	description = ("Endium Ingot"),
	_doc_items_longdesc = ("Molten Endium. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_endium_ingot.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_craftitem("pala_paladium:endium_nugget", {
	description = ("Endium Nugget"),
	_doc_items_longdesc = ("Endium Nugget. It is used to craft armor, tools, and whatnot."),
	inventory_image = "pala_paladium_endium_nugget.png",
	stack_max = 64,
	groups = { craftitem=1 },
})

minetest.register_craft({
	output = 'pala_paladium:endium_ingot',
	recipe = {
		{'pala_paladium:endium_nugget 9'},
	}
})