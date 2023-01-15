--[[
        -------
        SHOVELS
        -------
]]--

-- FUNCTIONS

local function make_grass_path(itemstack, placer, pointed_thing)
	-- Use pointed node's on_rightclick function first, if present
	local node = minetest.get_node(pointed_thing.under)
	if placer and not placer:get_player_control().sneak then
		if minetest.registered_nodes[node.name] and minetest.registered_nodes[node.name].on_rightclick then
			return minetest.registered_nodes[node.name].on_rightclick(pointed_thing.under, node, placer, itemstack) or itemstack
		end
	end
	-- Only make grass path if tool used on side or top of target node
	if pointed_thing.above.y < pointed_thing.under.y then
		return itemstack
	end
	if (minetest.get_item_group(node.name, "grass_block") == 1) then
		local above = table.copy(pointed_thing.under)
		above.y = above.y + 1
		if minetest.get_node(above).name == "air" then
			if minetest.is_protected(pointed_thing.under, placer:get_player_name()) then
				minetest.record_protection_violation(pointed_thing.under, placer:get_player_name())
				return itemstack
			end

			if not minetest.is_creative_enabled(placer:get_player_name()) then
				-- Add wear (as if digging a shovely node)
				local toolname = itemstack:get_name()
				local wear = mcl_autogroup.get_wear(toolname, "shovely")
				itemstack:add_wear(wear)
			end
			minetest.sound_play({name="default_grass_footstep", gain=1}, {pos = above}, true)
			minetest.swap_node(pointed_thing.under, {name="mcl_core:grass_path"})
		end
	end
	return itemstack
end
local function undo_grass_path(itemstack, placer, pointed_thing)
	-- Use pointed node's on_rightclick function first, if present
	local node = minetest.get_node(pointed_thing.under)
	if placer and not placer:get_player_control().sneak then
		if minetest.registered_nodes[node.name] and minetest.registered_nodes[node.name].on_rightclick then
			return minetest.registered_nodes[node.name].on_rightclick(pointed_thing.under, node, placer, itemstack) or itemstack
		end
	end
	function tprint (tbl, indent)
		if not indent then indent = 0 end
		local toprint = string.rep(" ", indent) .. "{\r\n"
		indent = indent + 2 
		for k, v in pairs(tbl) do
		  toprint = toprint .. string.rep(" ", indent)
		  if (type(k) == "number") then
			toprint = toprint .. "[" .. k .. "] = "
		  elseif (type(k) == "string") then
			toprint = toprint  .. k ..  "= "   
		  end
		  if (type(v) == "number") then
			toprint = toprint .. v .. ",\r\n"
		  elseif (type(v) == "string") then
			toprint = toprint .. "\"" .. v .. "\",\r\n"
		  elseif (type(v) == "table") then
			toprint = toprint .. tprint(v, indent + 2) .. ",\r\n"
		  else
			toprint = toprint .. "\"" .. tostring(v) .. "\",\r\n"
		  end
		end
		toprint = toprint .. string.rep(" ", indent-2) .. "}"
		return toprint
	  end
	--print (tprint(minetest.registered_nodes))
	-- Only make grass path if tool used on side or top of target node
	if pointed_thing.above.y < pointed_thing.under.y then
		return itemstack
	end
	if (minetest.get_item_group(node.name, "dirtifies_below_solid") == 1) then
		if (minetest.get_item_group(node.name, "cultivatable") == 2) then
	    	local above = table.copy(pointed_thing.under)
			above.y = above.y + 1
			if minetest.get_node(above).name == "air" then
				if minetest.is_protected(pointed_thing.under, placer:get_player_name()) then
					minetest.record_protection_violation(pointed_thing.under, placer:get_player_name())
					return itemstack
				end

				if not minetest.is_creative_enabled(placer:get_player_name()) then
					-- Add wear (as if digging a shovely node)
					local toolname = itemstack:get_name()
					local wear = mcl_autogroup.get_wear(toolname, "shovely")
					itemstack:add_wear(wear)
				end
				minetest.sound_play({name="default_grass_footstep", gain=1}, {pos = above}, true)
		    	minetest.swap_node(pointed_thing.under, {name="mcl_core:dirt_with_grass"})
			end
		end
	else
		make_grass_path(itemstack, placer, pointed_thing)
	end
	return itemstack
end

-- TESTING TOOLS

minetest.register_tool("qyintessential_undomistakes:testing_shovel", {
	description = ("Testing Shovel"),
	_doc_items_longdesc = shovel_longdesc,
	_doc_items_usagehelp = shovel_use,
	inventory_image = "default_tool_steelshovel.png",
	wield_scale = wield_scale,
	groups = { tool=1, shovel=1, dig_speed_class=4, enchantability=14 },
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=4,
		damage_groups = {fleshy=4},
		punch_attack_uses = 126,
	},
	on_place = undo_grass_path,
	sound = { breaks = "default_tool_breaks" },
	_repair_material = "mcl_core:iron_ingot",
	_mcl_toollike_wield = true,
	_mcl_diggroups = {
		shovely = { speed = 6, level = 4, uses = 251 }
	},
})

-- OVERWRITE

minetest.override_item("mcl_tools:shovel_wood", {
	on_place = undo_grass_path,
})
minetest.override_item("mcl_tools:shovel_stone", {
	on_place = undo_grass_path,
})
minetest.override_item("mcl_tools:shovel_iron", {
	on_place = undo_grass_path,
})
minetest.override_item("mcl_tools:shovel_gold", {
	on_place = undo_grass_path,
})
minetest.override_item("mcl_tools:shovel_diamond", {
	on_place = undo_grass_path,
})
minetest.override_item("mcl_tools:shovel_netherite", {
	on_place = undo_grass_path,
})

--[[
        ----
        AXES
        ----
]]--