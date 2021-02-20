minetest.register_node(":default:stone", {
	description = ("Stone"),
	tiles = {"default_stone.png"},
	groups = {cracky = 3, stone = 1},
  paramtype = "light",
  sunlight_propagates = true,
	drop = "default:cobble",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
	drawtype = "airlike",
	pointable = false,
	walkable = false,
	buildable_to = true,
	post_effect_color = {a = 20, r = 0, g = 128, b = 0},
})

minetest.register_node(":default:desert_stone", {
	description = ("Desert Stone"),
	tiles = {"default_desert_stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "default:desert_cobble",
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
  paramtype = "light",
  sunlight_propagates = true,
	drawtype = "airlike",
	pointable = false,
	walkable = false,
	buildable_to = true,
	post_effect_color = {a = 30, r = 128, g = 0, b = 0},
})

if(minetest.get_modpath("nether")) ~= nil then
	minetest.register_node(":nether:rack", {
		description = "Netherrack",
		tiles = {"nether_rack.png"},
		is_ground_content = true,
		groups = {cracky = 3, level = 2},
		sounds = default.node_sound_stone_defaults(),
	  paramtype = "light",
	  sunlight_propagates = true,
		drawtype = "airlike",
		pointable = false,
		walkable = false,
		buildable_to = true,
		post_effect_color = {a = 30, r = 128, g = 0, b = 64},
	})

	minetest.register_node(":nether:rack_deep", {
		description = "Deep Netherrack",
		_doc_items_longdesc = "Netherrack from deep in the mantle",
		tiles = {"nether_rack_deep.png"},
		is_ground_content = true,
		groups = {cracky = 3, level = 2},
		sounds = default.node_sound_stone_defaults(),
	  paramtype = "light",
	  sunlight_propagates = true,
		drawtype = "airlike",
		pointable = false,
		walkable = false,
		buildable_to = true,
		post_effect_color = {a = 30, r = 0, g = 0, b = 126},
	})
end
