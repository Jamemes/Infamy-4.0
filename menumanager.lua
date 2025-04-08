Hooks:Add("LocalizationManagerPostInit", "TweakdataListGui_loc", function(...)		
	LocalizationManager:add_localized_strings({
		menu_infamy_color_stinger_desc = "Weapon Color: $weapon_color;\nJoin Stinger: $join_stinger;",
		menu_infamy_name_mastermind = "Set of the Corrupted",
		menu_infamy_stinger_034_name = "Zapswitch",
		menu_infamy_button_go_infamous = "[Go Infamous]",
		menu_infamy_stinger_029_name = "Whammo",
		menu_infamy_prestige_error_rank = "Infamy Pool system unlocks at Infamy 5",
		menu_infamy_desc_technician_new = "Cold, calculating and a master of forced disappearances, dead or alive.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_color_inf_09_name = "Raw Surface",
		menu_infamy_banner_unlock = "Unlocked at Infamy rank $rank;.",
		menu_infamy_color_inf_10_name = "Static Rust",
		menu_infamy_name_suitpack_leather_white = "The Unimatrix Outfit: White Array",
		menu_infamy_prestige_error_paused = "You must be level 100 to collect Infamy Pool xp",
		menu_infamy_stinger_008_name = "Cucaracha",
		menu_infamy_color_inf_16_name = "Abstract White",
		menu_infamy_name_destroyer = "Demonshank",
		menu_infamy_go_infamous = "Go Infamous",
		menu_infamy_name_technician = "Set of the Ingenious",
		menu_infamy_rank_reached = "Congratulations! You have become Infamous!",
		st_menu_infamy_secret = "Unavailable",
		menu_infamy_stinger_002_name = "End of the Line",
		menu_infamy_box_description = "Reach this rank of Infamy to unlock something special!",
		menu_infamy_name_glovepack_neoncity = "Neon City",
		menu_infamy_desc_mastermind_new = "Known to cause moral chaos and sway even the most devoted lawman.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_color_inf_02_name = "Rain Forest",
		menu_infamy_name_ghost = "The Assassin set",
		menu_infamy_desc_lurker = "Something you would hate to meet in a dark alley.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_technician = "Cold, calculating and a master of forced disappearances, dead or alive.\n\nBONUSES:\nTechnician and Fugitive skill point requirements for each tier are reduced by ##$multibasic;##.\nExperience gained is increased by ##$xpboost;##.\n\nNote: Bonuses to skill trees do not stack.\n\nITEMS:\n\n",
		menu_infamy_name_placeholder = "Placeholder Item",
		menu_infamy_name_ranger = "Heister Sentry",
		menu_infamy_stinger_009_name = "Slide",
		menu_infamy_stinger_032_name = "Undertap",
		menu_infamy_go_inf_prestige = "With Infamy Pool",
		menu_infamy_desc_pain = "When intimidation is preferred over anonymity.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_coming_soon_desc = "The rewards for Infamy rank 100 will be released in a future update. You can still gain the rank and the rewards can be claimed once added to the game.",
		menu_infamy_stinger_035_name = "Disco Whack",
		menu_infamy_name_glovepack_tiger = "Tiger Stripe",
		menu_infamy_desc_xp = "Experience gained is increased by ##$xpboost;##.",
		menu_infamy_stinger_023_name = "Tracksuit",
		menu_infamy_color_inf_06_name = "Abstract Green",
		menu_infamy_color_inf_05_name = "Abstract Red",
		menu_infamy_color_inf_11_name = "Grey Flame",
		menu_infamy_stinger_006_name = "Smoothie",
		menu_infamy_total_xp = "Xp bonus from Infamy: $xpboost;%",
		menu_infamy_stinger_018_name = "Jingle Schwing",
		menu_infamy_stinger_019_name = "Le Criminal",
		menu_infamy_stinger_022_name = "Luchador",
		menu_infamy_suits_desc = "An infamous outfit to equip your character with. Only the most experienced heisters can wear such a glorious ensemble.",
		menu_infamy_stinger_001_name = "Infamous",
		menu_infamy_stinger_012_name = "Rising Up",
		menu_infamy_color_inf_14_name = "Zink",
		menu_infamy_color_inf_13_name = "Blue Iron",
		menu_infamy_stinger_028_name = "Bad Day",
		menu_infamy_color_inf_07_name = "Heavy Rust",
		menu_infamy_coming_soon_title = "Coming Soon!",
		menu_infamy_stinger_030_name = "Fightmarch",
		menu_infamy_coming_soon = "More rewards coming soon",
		menu_infamy_stinger_015_name = "Who's there?",
		menu_infamy_name_suitpack_t800_cowboy = "Infamy Leather Outfit: Infamy Dust",
		menu_infamy_name_suitpack_t800 = "Infamy Leather Outfit",
		menu_infamy_stinger_033_name = "Plot Twang",
		menu_infamy_desc_hood = "Frightening. Like something from a nightmare.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamytree_help = "Become infamous and spend your Infamy Points to get rewards.",
		menu_infamy_name_hood = "Kamul",
		menu_infamy_name_glovepack_silver = "Silver Champion",
		menu_infamy_stinger_005_name = "Dub Slam",
		menu_infamy_stinger_003_name = "Cha Cha Cha",
		menu_infamy_name_daft = "Android",
		menu_infamy_name_root = "Unlocking the Infamy tree",
		menu_infamy_color_inf_08_name = "Steel Rust",
		menu_infamy_stinger_020_name = "M. Knight",
		menu_infamy_name_suitpack_t800_red = "Infamy Leather Outfit: Infamy Red",
		menu_infamy_go_infamous_error_crime_spree = "You can't go infamous when you have an active crime spree",
		menu_infamy_stinger_016_name = "Sin Field",
		menu_infamy_stinger_026_name = "Antagonist",
		menu_infamy_stinger_027_name = "Mastertwang",
		menu_infamy_name_xp = "More XP",
		menu_infamy_stinger_036_name = "Can't Refuse",
		menu_infamy_desc_balaclava = "When after an anonymous look. A classic for a reason.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_color_stinger_name = "Weapon Color and a Join Stinger",
		menu_infamy_name_suitpack_t800_default = "Infamy Leather Outfit: Infamy Dark",
		menu_infamy_stinger_007_name = "Razorminded",
		menu_infamy_infamy_panel_infamy_level = "Current Infamy: $infamy;",
		menu_infamytree = "Infamy",
		menu_infamy_lock_info = "This is an Infamy Reward",
		menu_infamy_go_infamous_error_level = "You need to be level 100 to go infamous",
		menu_infamy_name_glovepack_cosmos = "Cosmos",
		menu_infamy_desc_mastermind = "Known to cause moral chaos and sway even the most devoted lawman.\n\nBONUSES:\nMastermind and Fugitive skill point requirements for each tier are reduced by ##$multibasic;##.\nExperience gained is increased by ##$xpboost;##.\n\nNote: Bonuses to skill trees do not stack.\n\nITEMS:\n\n",
		menu_infamy_infamy_panel_reputation_level = "Current reputation: $reputation;",
		menu_infamy_desc_punk = "An undead that still functions thanks to technological marvel.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_stinger_011_name = "Poetic",
		menu_infamy_desc_ghost_new = "Modern assassin that carries out death sentences - for the right price.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_rank_increased = "Congratulations! You have reached Infamy rank $infamy_rank;!",
		menu_infamy_desc_enforcer_new = "Used in crimes that requires the Enforcer to get his hands dirty.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_placeholder = "What do you want from me? MORE EXP BOOST? Well, maybe we'll add something else here later...",
		menu_infamy_desc_mask = "Experience gained is increased by ##$xpboost;##.\n\nITEMS:",
		menu_infamy_box_title = "Infamy Reward",
		menu_infamy_stinger_025_name = "Lock Stock",
		menu_infamy_color_inf_01_name = "Blood Sunset",
		menu_infamy_name_mask = "More Masks",
		menu_infamy_unlock_prev_tier = "You need to unlock previous tier before you can buy this.",
		menu_infamy_rank = "Infamy Rank $rank;",
		menu_infamy_stinger_031_name = "Metalcheck",
		menu_infamy_name_glovepack_wool = "Highland Wool Combo",
		menu_infamy_go_infamous_error_prestige_xp = "Not enough xp in your Infamy Pool",
		menu_infamy_name_pain = "Venger",
		menu_infamy_legend_go_infamous_prestige = "$BTN_Y; Go Infamous with infamy pool",
		menu_infamy_name_enforcer = "The Slaughterhouse set",
		menu_infamy_stinger_010_name = "Here We Go",
		menu_infamy_weapon_color_desc = "An infamous weapon color to put on your guns. Only the most experienced heisters can wield such spectacular hardware.",
		menu_infamy_stinger_000_name = "Joining the Crew",
		menu_infamy_stinger_014_name = "Figaro",
		menu_infamy_desc_enforcer = "Used in crimes that requires the Enforcer to get his hands dirty.\n\nBONUSES:\nEnforcer and Fugitive skill point requirements for each tier are reduced by ##$multibasic;##.\nExperience gained is increased by ##$xpboost;##.\n\nNote: Bonuses to skill trees do not stack.\n\nITEMS:\n\n",
		menu_infamy_color_inf_12_name = "Vintage Reptile",
		menu_infamy_name_glovepack_molten = "Molten",
		menu_infamy_name_suitpack_leather_red = "The Unimatrix Outfit: Red Array",
		menu_infamy_color_inf_03_name = "Ghost Red Camo",
		menu_infamy_name_suitpack_leather_black = "The Unimatrix Outfit: Black Array",
		menu_infamy_banner_already_unlocked = "Item rewards have already been unlocked.\nExperience boost will be unlocked at Infamy rank $rank;",
		menu_infamy_color_inf_04_name = "Purple Haze",
		menu_infamy_color_inf_15_name = "Abstract Black",
		menu_infamy_desc_daft = "A not too subtle mask for a heister that feels the groove.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_destroyer = "A truly intimidating mask best used when going to war.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_ghost = "Modern assassin that carries out death sentences - for the right price.\n\nBONUSES:\nGhost and Fugitive skill point requirements for each tier are reduced by ##$multibasic;##.\nExperience gained is increased by ##$xpboost;##.\n\nNote: Bonuses to skill trees do not stack.\n\nITEMS:\n\n",
		menu_infamy_desc_ranger = "Intimidating and otherwise perfect when having a bad hairday.\n\nBONUSES:\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_root = "As a new arrival to the criminal elite, the first order of business is for you to get gear and fanfare befitting someone of your status.\n\nBONUSES:\nYour infamous base drop rate is increased from ##$base_chance;## to ##$buffed_chance;##.\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_desc_root_new = "As a new arrival to the criminal elite, the first order of business is for you to get gear and fanfare befitting someone of your status.\n\nBONUSES:\nSkill point requirements for each tier are reduced by ##$multibasic;##.\nYour infamous base drop rate is increased from ##$base_chance;## to ##$buffed_chance;##.\nExperience gained is increased by ##$xpboost;##.\n\nITEMS:\n\n",
		menu_infamy_gloves_desc = "An infamous glove to equip your character with, alongside any outfit. Only the most experienced heisters can wear such awesome gloves.",
		menu_infamy_go_infamous_error_money = "You need to pay 200,000,000 from your offshore account to go infamous.",
		menu_infamy_go_inf_rep = "With Reputation",
		menu_infamy_help = "Become infamous and increase your Infamy rank. Special rewards are available for Infamy rank 1 to 100.",
		menu_infamy_infamy_panel_prestige_level = "Current Infamy Pool: ",
		menu_infamy_join_stinger_desc = "An infamous join stinger that can be selected to play when you join a game. Only the most experienced heisters can make such an epic entrance.",
		menu_infamy_legend_go_infamous = "$BTN_X; Go Infamous",
		menu_infamy_name_balaclava = "Balaclava",
		menu_infamy_name_lurker = "Lurker",
		menu_infamy_name_punk = "The Being",
		menu_infamy_name_suitpack_leather = "The Unimatrix Outfit: Brown Array",
		menu_infamy_name_suitpack_t800_toughboy = "Infamy Leather Outfit: Infamy White",
		menu_infamy_stinger_004_name = "Sitcom",
		menu_infamy_stinger_013_name = "Wakie Wakie",
		menu_infamy_stinger_017_name = "Gunzerking",
		menu_infamy_stinger_021_name = "Doomed",
		menu_infamy_stinger_024_name = "Tension",
		st_menu_infamy_available_points = "$points; Infamy points available",
		st_menu_infamy_secret_desc = "This tier of the Infamy tree is currently locked. It will be updated continuously during the lifetime of PAYDAY 2.",
	})
	
	if Idstring("russian"):key() == SystemInfo:language():key() then
		LocalizationManager:add_localized_strings({
			menu_infamy_color_stinger_desc = [[Цвет для оружия: $weapon_color;\nЗвук присоединения: $join_stinger;]],
			menu_infamy_name_mastermind = [[Прокаженный]],
			menu_infamy_stinger_034_name = [[Zapswitch]],
			menu_infamy_button_go_infamous = [[[Получить ранг]],
			menu_infamy_stinger_029_name = [[Whammo]],
			menu_infamy_prestige_error_rank = [[Система Резерва Бесславия разблокируется на 5 уровне Бесславия]],
			menu_infamy_desc_technician_new = [[Хладнокровный, расчётливый. Мастер, заставляющий людей исчезнуть, живыми или мёртвыми.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_color_inf_09_name = [[Необработанная поверхность]],
			menu_infamy_banner_unlock = [[Открывается на $rank; ранге Бесславия.]],
			menu_infamy_color_inf_10_name = [[Статичная коррозия]],
			menu_infamy_name_suitpack_leather_white = [[Униматрица: Белый массив]],
			menu_infamy_prestige_error_paused = [[Вы должны бать 100 уровня, чтобы получить опыт Резерва Бесславия]],
			menu_infamy_stinger_008_name = [[Кукарача]],
			menu_infamy_color_inf_16_name = [[Абстрактный белый]],
			menu_infamy_name_destroyer = [[Дух воина]],
			menu_infamy_go_infamous = [[Go Infamous]],
			menu_infamy_name_technician = [[Изобретатель]],
			menu_infamy_rank_reached = [[Поздравляем! Вы получили ранг Бесславия!]],
			st_menu_infamy_secret = [[Секрет]],
			menu_infamy_stinger_002_name = [[Конец пути]],
			menu_infamy_box_description = [[Достигните этого ранга Бесславия, чтобы получить особую награду!]],
			menu_infamy_name_glovepack_neoncity = [[Неоновый город]],
			menu_infamy_desc_mastermind_new = [[Известен способностями вызывать моральный хаос и убеждением самых преданных законников.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_color_inf_02_name = [[Тропический лес]],
			menu_infamy_name_ghost = [[Наемный убийца]],
			menu_infamy_desc_lurker = [[С таким вы точно не захотели бы встретиться в тёмном переулке.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_technician = [[Хладнокровный и прагматичный мастер насильственных исчезновений. Не имеет значения жива жертва или нет.\n\nБОНУСЫ:\nСнижает необходимое количество очков навыков для открытия ряда в дереве техника и беглеца на ##$multibasic;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##. ВНИМАНИЕ: Бонусы для деревьев навыков не складываются.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_name_placeholder = [[Местозаполнитель]],
			menu_infamy_name_ranger = [[Страж]],
			menu_infamy_stinger_009_name = [[Скольжение]],
			menu_infamy_stinger_032_name = [[Undertap]],
			menu_infamy_go_inf_prestige = [[C Резервом Бесславия]],
			menu_infamy_desc_pain = [[Когда запугать кого-то важнее, чем скрыть лицо.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_coming_soon_desc = [[Награды за ранги Бесславия будут добавлены в будущих обновлениях. Вы всё ещё можете получить эти ранги и сразу получите награды, когда они будут добавлены в игру.]],
			menu_infamy_stinger_035_name = [[Disco Whack]],
			menu_infamy_name_glovepack_tiger = [[Тигровые полосы]],
			menu_infamy_desc_xp = [[Количество получаемого опыта увеличено на ##$xpboost;##.]],
			menu_infamy_stinger_023_name = [[Спортивный костюм]],
			menu_infamy_color_inf_06_name = [[Абстрактный зелёный]],
			menu_infamy_color_inf_05_name = [[Абстрактный красный]],
			menu_infamy_color_inf_11_name = [[Серое пламя]],
			menu_infamy_stinger_006_name = [[Смузи]],
			menu_infamy_total_xp = [[Бонус к опыту от Бесславия: $xpboost;%]],
			menu_infamy_stinger_018_name = [[Jingle Schwing]],
			menu_infamy_stinger_019_name = [[Le Criminal]],
			menu_infamy_stinger_022_name = [[Luchador]],
			menu_infamy_suits_desc = [[Бесславный набор одежды для вашего персонажа. Только самые опытные грабители достойны носить эти чудесные вещи.]],
			menu_infamy_stinger_001_name = [[Бесславие]],
			menu_infamy_stinger_012_name = [[На подъёме]],
			menu_infamy_color_inf_14_name = [[Цинк]],
			menu_infamy_color_inf_13_name = [[Синее железо]],
			menu_infamy_stinger_028_name = [[Bad Day]],
			menu_infamy_color_inf_07_name = [[Сильная коррозия]],
			menu_infamy_coming_soon_title = [[Уже Cкоро!]],
			menu_infamy_stinger_030_name = [[Fightmarch]],
			menu_infamy_coming_soon = [[Новые награды будут позже]],
			menu_infamy_stinger_015_name = [[Кто там?]],
			menu_infamy_name_suitpack_t800_cowboy = [[Бесславная пыльная кожанка]],
			menu_infamy_name_suitpack_t800 = [[Бесславная кожанка]],
			menu_infamy_stinger_033_name = [[Plot Twang]],
			menu_infamy_desc_hood = [[Пугающе. Как будто образ из ночного кошмара.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamytree_help = [[Обретите Бесславие и тратьте очки, чтобы получать награды.]],
			menu_infamy_name_hood = [[Камул]],
			menu_infamy_name_glovepack_silver = [[Серебряный чемпион]],
			menu_infamy_stinger_005_name = [[Удар дабстепа]],
			menu_infamy_stinger_003_name = [[Ча ча ча]],
			menu_infamy_name_daft = [[Андроид]],
			menu_infamy_name_root = [[Освоить дерево Бесславия]],
			menu_infamy_color_inf_08_name = [[Стальная коррозия]],
			menu_infamy_stinger_020_name = [[M. Knight]],
			menu_infamy_name_suitpack_t800_red = [[Бесславная красная кожанка]],
			menu_infamy_go_infamous_error_crime_spree = [[Вы не можете получить ранг Бесславия с активной серией преступлений.]],
			menu_infamy_stinger_016_name = [[Sin Field]],
			menu_infamy_stinger_026_name = [[Антагонист]],
			menu_infamy_stinger_027_name = [[Mastertwang]],
			menu_infamy_name_xp = [[Больше опыта]],
			menu_infamy_stinger_036_name = [[Can't Refuse]],
			menu_infamy_desc_balaclava = [[Само воплощение слова "анонимность". Эта маска стала классической не просто так.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_color_stinger_name = [[Цвет для оружия и звук присоединения]],
			menu_infamy_name_suitpack_t800_default = [[Бесславная чёрная кожанка]],
			menu_infamy_stinger_007_name = [[Razorminded]],
			menu_infamy_infamy_panel_infamy_level = [[Текущий ранг: $infamy;]],
			menu_infamytree = [[Бесславие]],
			menu_infamy_lock_info = [[Награда за Бесславие]],
			menu_infamy_go_infamous_error_level = [[Вам нужен 100-ый уровень, чтобы получить ранг Бесславия.]],
			menu_infamy_name_glovepack_cosmos = [[Космос]],
			menu_infamy_desc_mastermind = [[Известен тем, что может вселить страх даже в самого непробиваемого судебного пристава.\n\nБОНУСЫ:\nСнижает необходимое количество очков навыков для открытия ряда в дереве манипулятора и беглеца на ##$multibasic;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##. ВНИМАНИЕ: Бонусы для деревьев навыков не складываются.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_infamy_panel_reputation_level = [[Текущий уровень репутации: $reputation;]],
			menu_infamy_desc_punk = [[Нежить, которая всё ещё существует благодаря чуду технологического прогресса.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_stinger_011_name = [[Поэзия]],
			menu_infamy_desc_ghost_new = [[Современный наёмный убийца, который исполняет смертные приговоры за хорошую цену.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_rank_increased = [[Поздравляем! Вы получили новый ранг бесславия: $infamy_rank;.]],
			menu_infamy_desc_enforcer_new = [[Использовалось в преступлениях, для которых штурмовику требовалось запачкать руки.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n ]],
			menu_infamy_desc_placeholder = [[Что ты хочешь от меня? ЕЩЁ БОНУСОВ К ОПЫТУ? Что же... Возможно мы добавим что-нибудь сюда позже....]],
			menu_infamy_desc_mask = [[Количество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:]],
			menu_infamy_box_title = [[Награда за Бесславие]],
			menu_infamy_stinger_025_name = [[Lock Stock]],
			menu_infamy_color_inf_01_name = [[Кровавый закат]],
			menu_infamy_name_mask = [[Больше масок]],
			menu_infamy_unlock_prev_tier = [[Сначала нужно открыть предыдущий ряд.]],
			menu_infamy_rank = [[Ранг Бесславия: $rank;]],
			menu_infamy_stinger_031_name = [[Metalcheck]],
			menu_infamy_name_glovepack_wool = [[Шерстяное комбо]],
			menu_infamy_go_infamous_error_prestige_xp = [[В вашем Резерве Бесславия не хватает опыта]],
			menu_infamy_name_pain = [[Мститель]],
			menu_infamy_legend_go_infamous_prestige = [[$BTN_Y; Go Infamous with infamy pool]],
			menu_infamy_name_enforcer = [[Палач]],
			menu_infamy_stinger_010_name = [[Поехали]],
			menu_infamy_weapon_color_desc = [[Бесславный цвет, который можно установить на ваше оружие. Только самые опытные грабители могут использовать такое оснащение.]],
			menu_infamy_stinger_000_name = [[Посвящение в банду]],
			menu_infamy_stinger_014_name = [[Фигаро]],
			menu_infamy_desc_enforcer = [[Профессионал в грязных делах, который не против испачкать руки.\n\nБОНУСЫ:\nСнижает необходимое количество очков навыков для открытия ряда в дереве штурмовика и беглеца на ##$multibasic;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##. ВНИМАНИЕ: Бонусы для деревьев навыков не складываются.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_color_inf_12_name = [[Винтажная рептилия]],
			menu_infamy_name_glovepack_molten = [[Магма]],
			menu_infamy_name_suitpack_leather_red = [[Униматрица: Красный массив]],
			menu_infamy_color_inf_03_name = [[Красный камуфляж-призрак]],
			menu_infamy_name_suitpack_leather_black = [[Униматрица: Чёрный массив]],
			menu_infamy_banner_already_unlocked = [[Предметы уже были разблокированы\nБонус к получаемому опыту будет разблокирован на $rank; ранге Бесславия.]],
			menu_infamy_color_inf_04_name = [[Лиловая дымка]],
			menu_infamy_color_inf_15_name = [[Абстрактный чёрный]],
			menu_infamy_desc_daft = [[Не очень утончённая маска, но отлично подходит грабителю, который предпочитает грубые материалы.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_destroyer = [[По-настоящему устрашающая маска. В такой можно хоть на войну идти.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_ghost = [[Современный убийца, объявляющий смертные приговоры. Конечно же, за определённую цену.\n\nБОНУСЫ:\nСнижает необходимое количество очков навыков для открытия ряда в дереве призрака и беглеца на ##$multibasic;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##. ВНИМАНИЕ: Бонусы для деревьев навыков не складываются.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_ranger = [[Пугающая маска, которая отлично подходит, если день не задался.\n\nБОНУСЫ:\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_root = [[Теперь вы стали одним из немногих вступивших в криминальную элиту. Согласно новому статусу, вам положены определённые привилегии.\n\nБОНУСЫ:\nШанс выпадения Бесславных предметов увеличен с ##$base_chance;## до ##$buffed_chance;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nПРЕДМЕТЫ:\n\n]],
			menu_infamy_desc_root_new = [[Теперь вы стали одним из немногих вступивших в криминальную элиту. Согласно новому статусу, вам положены определённые привилегии.\n\nБОНУСЫ:\nКоличество требуемых очков навыков для каждого ряда снижены на ##$multibasic;##.\nШанс выпадения Бесславных предметов увеличен с ##$base_chance;## на ##$buffed_chance;##.\nКоличество получаемого опыта увеличено на ##$xpboost;##.\n\nITEMS:\n\n]],
			menu_infamy_gloves_desc = [[Бесславные перчатки, которые можно надеть на вашего персонажа вместе с костюмом. Только самые опытные грабители могут носить такие крутые перчатки.]],
			menu_infamy_go_infamous_error_money = [[Вам нужно заплатить 200,000,000 с вашего оффшорного счёта, чтобы получить ранг Бесславия.]],
			menu_infamy_go_inf_rep = [[С репутацией]],
			menu_infamy_help = [[Обретите Бесславие, чтобы разблокировать особые награды. Особые награды доступны с 1-го по 100-ый ранги.]],
			menu_infamy_infamy_panel_prestige_level = [[Текущий Резерв Бесславия:]],
			menu_infamy_join_stinger_desc = [[Бесславный звук присоединения, который можно проиграть другим игрокам, когда вы присоединяетесь к игре. Только самые опытные грабители могут так эпично появляться.]],
			menu_infamy_legend_go_infamous = [[$BTN_X; Получить ранг Бесславия]],
			menu_infamy_name_balaclava = [[Балаклава]],
			menu_infamy_name_lurker = [[Хищник]],
			menu_infamy_name_punk = [[Существо]],
			menu_infamy_name_suitpack_leather = [[Униматрица: Коричневый массив]],
			menu_infamy_name_suitpack_t800_toughboy = [[Бесславная белая кожанка]],
			menu_infamy_stinger_004_name = [[Ситком]],
			menu_infamy_stinger_013_name = [[Вставай, вставай]],
			menu_infamy_stinger_017_name = [[Gunzerking]],
			menu_infamy_stinger_021_name = [[Обречённый]],
			menu_infamy_stinger_024_name = [[Напряжение]],
			st_menu_infamy_available_points = [[Очков Бесславия: $points;]],
			st_menu_infamy_secret_desc = [[Этот ряд дерева Бесславия в данный момент закрыт. Он будет обновляться со временем, вместе с PAYDAY 2.]],
		})
	end
end)

MenuCallbackHandler._sound_source = SoundDevice:create_source("MenuCallbackHandler")

function MenuManager:play_join_stinger_by_index(index)
	local sound_switch = string.format("infamy_stinger_%02d", index)

	self._sound_source:set_switch("infamy_stinger", sound_switch)

	return self._sound_source:post_event("infamy_stinger_player_join")
end


function MenuCallbackHandler:_increase_infamous(yes_clbk)
	managers.menu_scene:destroy_infamy_card()

	local max_rank = #tweak_data.infamy.ranks

	if managers.experience:current_level() < 100 or max_rank <= managers.experience:current_rank() then
		return
	end

	local rank = managers.experience:current_rank() + 1

	managers.experience:reset()
	managers.experience:set_current_rank(rank)

	local offshore_cost = managers.money:get_infamous_cost(rank)

	if offshore_cost > 0 then
		managers.money:deduct_from_total(managers.money:total())
		managers.money:deduct_from_offshore(offshore_cost)
	end

	if managers.skilltree.infamy_reset then
		managers.skilltree:infamy_reset()
	else
		managers.skilltree:reset()
	end

	managers.blackmarket:reset_equipped()

	if managers.menu_component then
		managers.menu_component:refresh_player_profile_gui()
	end

	local logic = managers.menu:active_menu().logic

	if logic then
		logic:refresh_node()
		logic:select_item("crimenet")
	end

	managers.savefile:save_progress()
	managers.savefile:save_setting(true)
	managers.menu:post_event("infamous_player_join_stinger")

	if yes_clbk then
		yes_clbk()
	end

	-- if SystemInfo:distribution() == Idstring("STEAM") then
		-- managers.statistics:publish_level_to_steam()
	-- end
end

function MenuCallbackHandler:_increase_infamous_with_prestige(yes_clbk)
	managers.menu_scene:destroy_infamy_card()

	local max_rank = #tweak_data.infamy.ranks

	if managers.experience:current_level() < 100 or max_rank <= managers.experience:current_rank() then
		return
	end

	local rank = managers.experience:current_rank() + 1

	managers.experience:set_current_rank(rank)
	managers.experience:set_current_prestige_xp(0)

	local offshore_cost = managers.money:get_infamous_cost(rank)

	if offshore_cost > 0 then
		managers.money:deduct_from_total(managers.money:total())
		managers.money:deduct_from_offshore(offshore_cost)
	end

	if managers.menu_component then
		managers.menu_component:refresh_player_profile_gui()
	end

	local logic = managers.menu:active_menu().logic

	if logic then
		logic:refresh_node()
		logic:select_item("crimenet")
	end

	managers.savefile:save_progress()
	managers.savefile:save_setting(true)
	managers.menu:post_event("infamous_player_join_stinger")

	if yes_clbk then
		yes_clbk()
	end

	-- if SystemInfo:distribution() == Idstring("STEAM") then
		-- managers.statistics:publish_level_to_steam()
	-- end
end

function MenuCallbackHandler:become_infamous(params)
	if not self:can_become_infamous_4() then
		return
	end

	local rank = managers.experience:current_rank() + 1
	local infamous_cost = managers.money:get_infamous_cost(rank)
	local yes_clbk = params and params.yes_clbk or false
	local no_clbk = params and params.no_clbk
	local params = {
		cost = managers.experience:cash_string(infamous_cost),
		free = infamous_cost == 0
	}

	if infamous_cost <= managers.money:offshore() and managers.experience:current_level() >= 100 then
		function params.yes_func()
			managers.menu:open_node("blackmarket_preview_node", {
				{
					back_callback = callback(MenuCallbackHandler, MenuCallbackHandler, "_increase_infamous", yes_clbk)
				}
			})
			managers.menu:post_event("infamous_stinger_level_" .. (rank < 10 and "0" or "") .. tostring(rank))
			managers.menu_scene:spawn_infamy_card(rank)
		end
	end

	function params.no_func()
		if no_clbk then
			no_clbk()
		end
	end

	managers.menu:show_confirm_become_infamous(params)
end

function MenuCallbackHandler:become_infamous_with_prestige(params)
	if not self:can_become_infamous_4() then
		return
	end

	local rank = managers.experience:current_rank() + 1
	local infamous_cost = managers.money:get_infamous_cost(rank)
	local yes_clbk = params and params.yes_clbk or false
	local no_clbk = params and params.no_clbk
	local params = {
		cost = managers.experience:cash_string(infamous_cost),
		free = infamous_cost == 0,
		prestige = true
	}

	if infamous_cost <= managers.money:offshore() and managers.experience:current_level() >= 100 then
		function params.yes_func()
			managers.menu:open_node("blackmarket_preview_node", {
				{
					back_callback = callback(MenuCallbackHandler, MenuCallbackHandler, "_increase_infamous_with_prestige", yes_clbk)
				}
			})
			managers.menu:post_event("infamous_stinger_level_" .. (rank < 10 and "0" or "") .. tostring(rank))
			managers.menu_scene:spawn_infamy_card(rank)
		end
	end

	function params.no_func()
		if no_clbk then
			no_clbk()
		end
	end

	managers.menu:show_confirm_become_infamous(params)
end


function MenuCallbackHandler:can_become_infamous_4()
	return self:is_level_100() and self:is_not_max_rank()
end

function MenuCallbackHandler:can_become_infamous()
	return false
end