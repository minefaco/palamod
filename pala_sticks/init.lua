local is_creative_enabled = minetest.is_creative_enabled
local function take_pearl(player)
	local inv = player:get_inventory()
	local stack
	for i=1, inv:get_size("main") do
		local it = inv:get_stack("main", i)
		if not it:is_empty() and it:get_name() == "mcl_throwing:ender_pearl" then
			inv:set_stack("main", i, it:take_item())
			return true
		end
	end
	return false
end
minetest.register_tool("pala_sticks:teleport_stick", {
    description = "Teleport Stick",
    inventory_image = "default_stick.png",
	on_use = function(itemstack, player, pointed_thing)
		local name = player:get_player_name()
		local pos = player:get_pos()
		if not is_creative_enabled(name) then
			if not take_pearl(player) then
				return
			end
		end
		mcl_throwing.throw("mcl_throwing:ender_pearl",
			{x=pos.x, y=pos.y+1.5, z=pos.z}, player:get_look_dir(), 22, name)
	end,
})

minetest.register_tool("pala_sticks:heal_stick", {
    description = "Heal Stick",
    inventory_image = "default_stick.png",
	on_use = function(itemstack, player, pointed_thing)
		local addhp = 6
		local hp = player:get_hp()
		if hp + addhp >= 20 then
			player:set_hp(hp+addhp)
		else
			player:set_hp(20)
		end
		--TODO: remove wear
	end,
})
