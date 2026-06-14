dofile(ModPath .. "infamycardgui.lua")

local data = MenuSceneManager.init
function MenuSceneManager:init()
	data(self)
	self._one_frame_delayed_clbks = {}
end

local data = MenuSceneManager.update
function MenuSceneManager:update(t, dt)
	if self._one_frame_delayed_clbks and #self._one_frame_delayed_clbks > 0 then
		for _, clbk in ipairs(self._one_frame_delayed_clbks) do
			clbk()
		end

		self._one_frame_delayed_clbks = {}
	end
	
	data(self, t, dt)
end

function MenuSceneManager:add_one_frame_delayed_clbk(clbk)
	table.insert(self._one_frame_delayed_clbks, clbk)
end

function MenuSceneManager:on_setup_infamy_menu()
	self:add_one_frame_delayed_clbk(function ()
		self:remove_item()

		self.infamy_menu_ready = true
		self._disable_rotate = true
		managers.menu_scene:set_scene_template("blackmarket_mask")
	end)
end

function MenuSceneManager:on_close_infamy_menu()
	self.infamy_menu_ready = false
	self._disable_rotate = false
end

function MenuSceneManager:spawn_infamy_card_preview(card_sqeuence_name, show_front)
	self:add_one_frame_delayed_clbk(function ()
		self._item_pos = Vector3(0, 0, 0)

		mrotation.set_zero(self._item_rot)

		self._item_yaw = show_front and 180 or 0
		self._item_pitch = 0
		self._item_roll = 0

		mrotation.set_zero(self._item_rot_mod)

		self._use_item_grab = show_front
		local unit = World:spawn_unit(Idstring("units/menu/menu_scene/infamy_card"), self._item_pos, self._item_rot)

		if card_sqeuence_name then
			unit:damage():run_sequence_simple(card_sqeuence_name)
		end

		self:_set_item_unit(unit, nil, nil, nil, nil, {
			item_offset = Vector3(0, 0, 4)
		})
	end)
end

function MenuSceneManager:set_character_equipped_card(unit, rank)
	unit = unit or self._character_unit
	local card_unit = self:_spawn_infamy_card_unit(Vector3(0, 0, 0), Rotation(0, 0, 0), rank + 1, "menu_character")

	unit:link(Idstring("a_weapon_left_front"), card_unit, card_unit:orientation_object():name())
	self:_delete_character_weapon(unit, "secondary")

	self._card_units = self._card_units or {}
	self._card_units[unit:key()] = card_unit

	self:_select_character_pose()
end

function MenuSceneManager:set_character_card(peer_id, rank, unit)
	if rank and rank > 0 then
		local state = unit:play_redirect(Idstring("idle_menu"))

		unit:anim_state_machine():set_parameter(state, "husk_card" .. peer_id, 1)

		local card_unit = self:_spawn_infamy_card_unit(Vector3(0, 0, 0), Rotation(0, 0, 0), rank, peer_id)
		unit:link(Idstring("a_weapon_left_front"), card_unit, card_unit:orientation_object():name())
		self:_delete_character_weapon(unit, "secondary")

		self._card_units = self._card_units or {}
		self._card_units[unit:key()] = card_unit
	end
end

function MenuSceneManager:spawn_infamy_card(rank)
	self:add_one_frame_delayed_clbk(callback(self, self, "_spawn_infamy_card", rank))
end

function MenuSceneManager:_spawn_infamy_card(rank)
	self._item_pos = Vector3(0, 0, 0)
	self._item_yaw = 0
	self._item_pitch = 0
	self._item_roll = 0

	mrotation.set_zero(self._item_rot)
	mrotation.set_zero(self._item_rot_mod)

	self._disable_rotate = true
	self._disable_dragging = true
	self._infamy_card_shown = true
	local unit = self:_spawn_infamy_card_unit(self._item_pos, self._item_rot, rank, "infamous_screen")

	if self._card_guis and self._card_guis.menu_character then
		self._card_guis.menu_character:show_rank(rank)
	end

	unit:damage():run_sequence_simple("card_flip_01")

	local anim_time = 2.666 + unit:anim_length(Idstring("card"))

	self:add_callback(callback(self, self, "_infamy_enable_dragging"), anim_time)
	self:_set_item_unit(unit)
end

function MenuSceneManager:_spawn_infamy_card_unit(pos, rot, rank, holder)
	local unit = World:spawn_unit(Idstring("units/menu/menu_scene/infamy_card"), pos, rot)

	if rank then
		self._card_guis = self._card_guis or {}
		if self._card_guis[holder] then
			self._card_guis[holder]:destroy()
			self._card_guis[holder] = nil
		end

		self._card_guis[holder] = InfamyCardGui:new(unit)
		self._card_guis[holder]:show_rank(rank)
	end

	return unit
end

function MenuSceneManager:destroy_infamy_card()
	self._disable_rotate = nil
	self._disable_dragging = nil
	self._infamy_card_shown = nil
	if self._card_guis and self._card_guis.infamous_screen then
		self._card_guis.infamous_screen:destroy()
		self._card_guis.infamous_screen = nil
	end
	self:remove_item()
end

local data = MenuSceneManager._delete_character_weapon
function MenuSceneManager:_delete_character_weapon(owner, type)
	data(self, owner, type)
	if self._card_guis and self._card_guis[owner:key()] then
		self._card_guis[owner:key()]:destroy()
		self._card_guis[owner:key()] = nil
	end
end