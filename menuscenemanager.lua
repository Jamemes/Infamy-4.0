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