local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local CachedApartments = {}

local blips = {
	[1] = {
		label = 'Motel',
		location = {x = 324.83, y = -209.91, z = 54.09}
	}
}

local Apartments = {
	[1] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 312.86, y = -218.87, z = 54.22},
		inside = {x = 332.77, y = -211.87, z = -55.19},
		exit = {x = 332.77, y = -211.87, z = -55.19},
		clothes = {x = 333.78, y = -205.55, z = -55.19},
		storage = {x = 332.92, y = -207.45, z = -55.19}
	},
	[2] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 310.82, y = -217.97, z = 54.22},
		inside = {x = 321.06, y = -213.08, z = -55.19},
		exit = {x = 321.06, y = -213.08, z = -55.19},
		clothes = {x = 321.6, y = -206.41, z = -55.19},
		storage = {x = 321.07, y = -208.36, z = -55.19}
	},
	[3] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 307.47, y = -216.54, z = 54.22},
		inside = {x = 322.60, y = -212.89, z = -45.36},
		exit = {x = 322.60, y = -212.89, z = -45.36},
		clothes = {x = 323.27, y = -206.07, z = -45.36},
		storage = {x = 322.59, y = -207.94, z = -45.36}
	},
	[4] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 307.78, y = -213.39, z = 54.22},
		inside = {x = 333.07, y = -212.84, z = -45.35},
		exit = {x = 333.07, y = -212.84, z = -45.35},
		clothes = {x = 333.93, y = -206.38, z = -45.35},
		storage = {x = 333.37, y = -208.35, z = -45.35}
	},
	[5] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 309.67, y = -208.08, z = 54.22},
		inside = {x = 321.66, y = -228.73, z = -44.70},
		exit = {x = 321.66, y = -228.73, z = -44.70},
		clothes = {x = 322.56, y = -222.11, z = -44.70},
		storage = {x = 321.85, y = -223.82, z = -44.70}
	},
	[6] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 311.59, y = -203.47, z = 54.22},
		inside = {x = 332.26, y = -227.13, z = -45.20},
		exit = {x = 332.26, y = -227.13, z = -45.20},
		clothes = {x = 333.15, y = -220.68, z = -45.20},
		storage = {x = 332.60, y = -222.40, z = -45.20}
	},
	[7] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 313.31, y = -198.1, z = 54.22},
		inside = {x = 342.82, y = -227.56, z = -55.25},
		exit = {x = 342.82, y = -227.56, z = -55.25},
		clothes = {x = 343.87, y = -220.72, z = -55.25},
		storage = {x = 343.09, y = -222.66, z = -55.25}
	},
	[8] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 315.67, y = -194.92, z = 54.22},
		inside = {x = 342.05, y = -211.83, z = -45.68},
		exit = {x = 342.05, y = -211.83, z = -45.68},
		clothes = {x = 342.97, y = -205.39, z = -45.68},
		storage = {x = 342.23, y = -207.13, z = -45.68}
	},
	[9] = { -- YMAP UYARLANDI
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 319.25, y = -196.38, z = 54.22},
		inside = {x = 343.05, y = -227.00, z = -45.04},
		exit = {x = 343.05, y = -227.00, z = -45.04},
		clothes = {x = 344.02, y = -220.35, z = -45.04},
		storage = {x = 343.16, y = -222.22, z = -45.04}
	},
	[10] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 321.25, y = -197.36, z = 54.22},
		inside = {x = 332.58, y = -228.68, z = -38.63},
		exit = {x = 332.58, y = -228.68, z = -38.63},
		clothes = {x = 333.28, y = -222.23, z = -38.63},
		storage = {x = 332.79, y = -223.94, z = -38.63}
	},
	[11] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 312.86, y = -218.87, z = 58.00},
		inside = {x = 342.35, y = -210.99, z = -39.79},
		exit = {x = 342.35, y = -210.99, z = -39.79},
		clothes = {x = 343.1, y = -204.29, z = -39.79},
		storage = {x = 342.56, y = -206.32, z = -39.79}
	},
	[12] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 310.82, y = -218.07, z = 58.00},
		inside = {x = 343.60, y = -227.17, z = -39.29},
		exit = {x = 343.60, y = -227.17, z = -39.29},
		clothes = {x = 343.9, y = -220.46, z = -39.29},
		storage = {x = 343.54, y = -222.32, z = -39.29}
	},
	[13] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 307.24, y = -216.64, z = 58.00},
		inside = {x = 320.89, y = -227.17, z = -39.19},
		exit = {x = 320.89, y = -227.17, z = -39.19},
		clothes = {x = 321.3, y = -220.29, z = -39.19},
		storage = {x = 320.84, y = -222.34, z = -39.19}
	},
	[14] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 307.67, y = -213.46, z = 58.02},
		inside = {x = 321.34, y = -211.43, z = -38.70},
		exit = {x = 321.34, y = -211.43, z = -38.70},
		clothes = {x = 321.87, y = -204.57, z = -38.70},
		storage = {x = 321.20, y = -206.60, z = -38.70}
	},
	[15] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 309.52, y = -208.00, z = 58.02},
		inside = {x = 332.45, y = -210.03, z = -38.78},
		exit = {x = 332.45, y = -210.03, z = -38.78},
		clothes = {x = 333.15, y = -203.16, z = -38.78},
		storage = {x = 332.42, y = -205.15, z = -38.78}
	},
	[16] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 311.42, y = -203.56, z = 58.02},
		inside = {x = 312.21, y = -227.17, z = -55.35},
		exit = {x = 312.21, y = -227.17, z = -55.35},
		clothes = {x = 312.65, y = -220.44, z = -55.35},
		storage = {x = 312.07, y = -222.38, z = -55.35}
	},
	[17] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 313.50, y = -198.17, z = 58.02},
		inside = {x = 311.31, y = -213.12, z = -55.19},
		exit = {x = 311.31, y = -213.12, z = -55.19},
		clothes = {x = 311.64, y = -206.34, z = -55.19},
		storage = {x = 311.15, y = -208.3, z = -55.19}
	},
	[18] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 315.77, y = -194.77, z = 58.02},
		inside = {x = 312.15, y = -227.17, z = -44.78},
		exit = {x = 312.15, y = -227.17, z = -44.78},
		clothes = {x = 312.59, y = -220.02, z = -44.78},
		storage = {x = 312.09, y = -222.53, z = -44.78}
	},
	[19] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 319.34, y = -196.29, z = 58.02},
		inside = {x = 312.67, y = -212.17, z = -45.37},
		exit = {x = 312.67, y = -212.17, z = -45.37},
		clothes = {x = 313.23, y = -205.4, z = -45.37},
		storage = {x = 312.66, y = -207.39, z = -45.37}
	},
	[20] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 321.29, y = -196.94, z = 58.02},
		inside = {x = 312.54, y = -227.17, z = -38.93},
		exit = {x = 312.54, y = -227.17, z = -38.93},
		clothes = {x = 312.97, y = -220.45, z = -38.93},
		storage = {x = 312.37, y = -222.38, z = -38.93}
	},
	[21] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 329.37, y = -225.14, z = 54.18},
		inside = {x = 313.02, y = -211.40, z = -39.05},
		exit = {x = 313.02, y = -211.40, z = -39.05},
		clothes = {x = 312.52, y = -204.87, z = -39.05},
		storage = {x = 312.97, y = -206.76, z = -39.05}
	},
	[22] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 331.3, y = -225.94, z = 54.18},
		inside = {x = 311.31, y = -200.48, z = -55.19},
		exit = {x = 311.31, y = -200.48, z = -55.19},
		clothes = {x = 311.70, y = -193.34, z = -55.19},
		storage = {x = 311.23, y = -195.61, z = -55.19}
	},
	[23] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 334.94, y = -227.37, z = 54.18},
		inside = {x = 311.39, y = -199.89, z = -45.18},
		exit = {x = 311.39, y = -199.89, z = -45.18},
		clothes = {x = 311.69, y = -193.13, z = -45.18},
		storage = {x = 311.22, y = -195.12, z = -45.18}
	},
	[24] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 337.15, y = -224.75, z = 54.18},
		inside = {x = 312.44, y = -200.22, z = -39.21},
		exit = {x = 312.44, y = -200.22, z = -39.21},
		clothes = {x = 312.83, y = -193.3, z = -39.21},
		storage = {x = 312.36, y = -195.40, z = -39.21}
	},
	[25] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 339.18, y = -219.45, z = 54.18},
		inside = {x = 321.35, y = -200.23, z = -55.19},
		exit = {x = 321.35, y = -200.23, z = -55.19},
		clothes = {x = 321.79, y = -192.98, z = -55.19},
		storage = {x = 321.31, y = -195.35, z = -55.19}
	},
	[26] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 340.93, y = -214.85, z = 54.18},
		inside = {x = 321.06, y = -199.65, z = -45.38},
		exit = {x = 321.06, y = -199.65, z = -45.38},
		clothes = {x = 321.47, y = -192.71, z = -45.38},
		storage = {x = 320.93, y = -194.84, z = -45.38}
	},
	[27] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 342.92, y = -209.56, z = 54.18},
		inside = {x = 320.93, y = -199.64, z = -39.02},
		exit = {x = 320.93, y = -199.64, z = -39.02},
		clothes = {x = 321.46, y = -192.89, z = -39.02},
		storage = {x = 320.87, y = -194.80, z = -39.02}
	},
	[28] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 344.68, y = -204.97, z = 54.18},
		inside = {x = 342.86, y = -239.34, z = -55.19},
		exit = {x = 342.86, y = -239.34, z = -55.19},
		clothes = {x = 343.20, y = -232.63, z = -55.19},
		storage = {x = 342.73, y = -234.60, z = -55.19}
	},
	[29] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 346.84, y = -199.62, z = 54.18},
		inside = {x = 342.45, y = -239.32, z = -44.99},
		exit = {x = 342.45, y = -239.32, z = -44.99},
		clothes = {x = 342.83, y = -232.52, z = -44.99},
		storage = {x = 342.34, y = -234.51, z = -44.99}
	},
	[30] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 329.39, y = -225.09, z = 57.99},
		inside = {x = 343.34, y = -239.13, z = -38.92},
		exit = {x = 343.34, y = -239.13, z = -38.92},
		clothes = {x = 343.70, y = -232.09, z = -38.92},
		storage = {x = 343.23, y = -234.35, z = -38.92}
	},
	[31] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 331.42, y = -225.95, z = 57.99},
		inside = {x = 332.49, y = -240.06, z = -44.41},
		exit = {x = 332.49, y = -240.06, z = -44.41},
		clothes = {x = 332.89, y = -233.05, z = -44.41},
		storage = {x = 332.42, y = -235.28, z = -44.41}
	},
	[32] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 334.96, y = -227.30, z = 57.99},
		inside = {x = 332.45, y = -240.41, z = -38.00},
		exit = {x = 332.45, y = -240.41, z = -38.00},
		clothes = {x = 332.90, y = -233.43, z = -38.00},
		storage = {x = 332.36, y = -235.61, z = -38.00}
	},
	[33] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 337.14, y = -224.71, z = 57.99},
		inside = {x = 332.48, y = -238.90, z = -55.19},
		exit = {x = 332.48, y = -238.90, z = -55.19},
		clothes = {x = 332.87, y = -231.91, z = -55.19},
		storage = {x = 332.43, y = -234.16, z = -55.19}
	},
	[34] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 339.14, y = -219.40, z = 57.99},
		inside = {x = 321.61, y = -238.42, z = -55.19},
		exit = {x = 321.61, y = -238.42, z = -55.19},
		clothes = {x = 321.95, y = -231.44, z = -55.19},
		storage = {x = 321.50, y = -233.65, z = -55.19}
	},
	[35] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 340.9, y = -214.83, z = 57.99},
		inside = {x = 321.49, y = -240.45, z = -44.63},
		exit = {x = 321.49, y = -240.45, z = -44.63},
		clothes = {x = 321.87, y = -233.55, z = -44.63},
		storage = {x = 321.38, y = -235.73, z = -44.63}
	},
	[36] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 343.00, y = -209.59, z = 57.99},
		inside = {x = 321.84, y = -240.33, z = -38.38},
		exit = {x = 321.84, y = -240.33, z = -38.38},
		clothes = {x = 322.19, y = -233.46, z = -38.38},
		storage = {x = 321.71, y = -235.67, z = -38.38}
	},
	[37] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 344.78, y = -204.99, z = 57.99},
		inside = {x = 310.78, y = -238.55, z = -55.19},
		exit = {x = 310.78, y = -238.55, z = -55.19},
		clothes = {x = 311.15, y = -231.72, z = -55.19},
		storage = {x = 310.67, y = -233.82, z = -55.19}
	},
	[38] = {
		label = 'Motel',
		ipl = 'Motel',
		enter = {x = 346.74, y = -199.64, z = 57.99},
		inside = {x = 310.74, y = -238.91, z = -38.79},
		exit = {x = 310.74, y = -238.91, z = -38.79},
		clothes = {x = 311.2, y = -231.97, z = -38.79},
		storage = {x = 310.59, y = -233.97, z = -38.79}
	},
}	
local PlayerData                = {}
local GUI                       = {}
local myRoom = nil
local exitLoc = nil
local playerId = PlayerId()
local serverId = GetPlayerServerId(localPlayerId)
local cam = nil
local hidden = {}
local drugs = {
	"weed_pooch",
	"coke_pooch",
	"meth_pooch",
	"weed_seed",
	"marijuana",
	"coke_ingredients",
	"meth_ingredients"
}

ESX = nil
Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
			ESX = obj
		end)
		
		Citizen.Wait(0)
	end

	while not ESX.IsPlayerLoaded() do
		Citizen.Wait(100)
	end
	
	addBlip()
	
	CacheApartments(function()
		myRoom = math.random(1, 38)
	
		for k,v in pairs(Apartments) do
			local owns = HasApartment(k)
			local owned = not visit and not invite
			local ped = GetPlayerPed(-1)			
			local enterMessage = 'Motel odasına girmek için ~INPUT_CONTEXT~ basın'

			if not owns then
				enterMessage = 'Motel odasına girmek için ~INPUT_CONTEXT~ basın'
			end
			
			if k == myRoom then
			
				Markers.AddMarker('apartment_' .. k, v.enter, enterMessage, function()
					OpenApartmentMenu(k, owns, v.inside.x, v.inside.y, v.inside.z)
				end)		

				if owned or visit then
					Session('create', {type = 'apartment', id = apartment})
				end

				if owned then
					Markers.RemoveMarker('apartment_storage' .. k)
					Markers.AddMarker('apartment_storage', v.storage, 'Çekmeceyi açmak için ~INPUT_CONTEXT~ basın', function()
						OpenStorageMainMenu(k, owns)
					end)
				end

				if owned or invited then
					Markers.RemoveMarker('apartment_clothes' .. k)
					Markers.AddMarker('apartment_clothes', v.clothes, 'Kıyafet değiştirmek için ~INPUT_CONTEXT~ basın', function()
						ESX.TriggerServerCallback('esx_eden_clotheshop:getPlayerDressing', function(dressing)
							local elements = {}

							for i=1, #dressing, 1 do
								table.insert(elements, {label = dressing[i], value = i})
							end

							ESX.UI.Menu.Open(
								'default', GetCurrentResourceName(), 'player_dressing',
								{
									title = 'Kıyafet Dolabı',
									align = 'top-left',
									elements = elements,
								},
								function(data, menu)
								TriggerEvent('skinchanger:getSkin', function(skin)
									ESX.TriggerServerCallback('esx_eden_clotheshop:getPlayerOutfit', function(clothes)
										TriggerEvent('skinchanger:loadClothes', skin, clothes)
										TriggerEvent('esx_skin:setLastSkin', skin)

										TriggerEvent('skinchanger:getSkin', function(skin)
											TriggerServerEvent('esx_skin:save', skin)
										end)
									end, data.current.value)
								end)
								end,
								function(data, menu)
									menu.close()
								end
							)
						end)
					end)
				end	
			end

			Markers.RemoveMarker('apartment_exit' .. k)
			Markers.AddMarker('apartment_exit', v.exit, 'Dışarıya çıkmak için ~INPUT_CONTEXT~ basın', function()
				local elements = {
					{label = 'Dışarı Çık', value = 'exit'}
				}

				if owned or invite then
					table.insert(elements, {label = 'Bir arkadaş davet et', value = 'invite'})
				end

				ESX.UI.Menu.CloseAll()
				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartment_teleport_menu',
					{
						title = 'Motel Odası',
						align = 'top-left',
						elements = elements
					},
					function(data, menu)
						menu.close()
						if data.current.value == 'exit' then

							SetEntityCoords(GetPlayerPed(-1), v.enter.x, v.enter.y, v.enter.z)

							if owned or visit then
								Session('delete')
							else
								Session('leave', v.enter.x, v.enter.y, v.enter,z)
							end
								
						elseif data.current.value == 'invite' then
							local playersInArea = ESX.Game.GetPlayersInArea(v.enter, 10.0)
							local elements = {}

							for i=1, #playersInArea, 1 do
								if playersInArea[i] ~= PlayerId() then
									table.insert(elements, {label = GetPlayerName(playersInArea[i]), value = playersInArea[i]})
								end
							end

							ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartments_invite',
								{
									title = 'Bir arkadaş davet et',
									align = 'top-left',
									elements = elements,
								},
								function(data, menu)
									menu.close()

									Session('invite', GetPlayerServerId(data.current.value), apartment, v.inside.x, v.inside.y, v.inside.z)
								end,
								function(data, menu)
									menu.close()
								end
							)
						end
					end,
					function(data, menu)
						menu.close()
					end
				)
			end)
		end

		TriggerServerEvent('esx_sommen_motel:playerLoaded', GetPlayerServerId(PlayerId()))
	end)
end)

function addBlip()
	for k,v in pairs(blips) do
		if v.location ~= nil then
			local coords = v.location
			local blip = AddBlipForCoord(coords.x, coords.y, coords.z)

			SetBlipSprite(blip, 475)
			SetBlipDisplay(blip, 4)
			SetBlipScale(blip, 0.9)
			SetBlipColour(blip, 67)
			SetBlipAsShortRange(blip, true)
			
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString('Motel')
			EndTextCommandSetBlipName(blip)
		end
	end
	return
end

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for i=1, #hidden, 1 do
			local ped = GetPlayerPed(hidden[i])

			SetEntityLocallyInvisible(ped)
			SetEntityNoCollisionEntity(GetPlayerPed(-1), ped, true)
		end
	end
end)

function Session(data, ...)
	TriggerServerEvent('esx_sommen_motel:session:' .. data, GetPlayerServerId(PlayerId()), ...)
end

RegisterNetEvent('esx_sommen_motel:voiceChannel')
AddEventHandler('esx_sommen_motel:voiceChannel', function(channel)
	if channel ~= nil then
		NetworkSetVoiceChannel(channel)
	else	
		Citizen.InvokeNative(0xE036A705F989E049)
	end
end)

RegisterNetEvent('esx_sommen_motel:show')
AddEventHandler('esx_sommen_motel:show', function(id)
	for i=1, #ESX.Game.GetPlayers(), 1 do
		if GetPlayerServerId(ESX.Game.GetPlayers()[i]) == id then
			for i=1, #hidden, 1 do
				if GetPlayerServerId(hidden[i]) == id then
					table.remove(hidden, i)
			 	end 
			end
		end
	end
end)

RegisterNetEvent('esx_sommen_motel:leave')
AddEventHandler('esx_sommen_motel:leave', function(session, x, y, z)
	if session.data ~= nil then
		if session.data.type == 'apartment' then
			local apartment = session.data.id
			local values = GetApartmentValues(apartment)

			SetEntityCoords(GetPlayerPed(-1), x, y, z)

		else
		end
	end
end)

RegisterNetEvent('esx_sommen_motel:joinedSession')
AddEventHandler('esx_sommen_motel:joinedSession', function(session, identifier, x, y, z)
	if session.data ~= nil then
		if session.data.type == 'apartment' then

			SetEntityCoords(GetPlayerPed(-1), x, y, z - 1.0)

		end
	end
end)

RegisterNetEvent('esx_sommen_motel:hide')
AddEventHandler('esx_sommen_motel:hide', function(id)
	for i=1, #ESX.Game.GetPlayers(), 1 do
		if GetPlayerServerId(ESX.Game.GetPlayers()[i]) == id then
			local ped = GetPlayerPed(ESX.Game.GetPlayers()[i])

			table.insert(hidden, ESX.Game.GetPlayers()[i])
		end
	end
end)

RegisterNetEvent('esx_sommen_motel:gotInvite')
AddEventHandler('esx_sommen_motel:gotInvite', function(inviter, apartment, x, y, z)
	OpenConfirmationMenu(function(confirmed)
		if confirmed then
			Session('acceptInvite', inviter)

			SetEntityCoords(GetPlayerPed(-1), x, y, z - 1.0)

		end
	end)
end)

function OpenStorageMainMenu(apartment)
	local elements = {
		{label = 'Depo', value = 'items'}
		--{label = 'Kara Para', value = 'safe'},
		--{label = 'Illegal', value = 'drugs'}
	}

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartment_storage',
		{
			title = 'Depo',
			align = 'top-left',
			elements = elements
		},
		function(data, menu)
			menu.close()

			OpenStorageUnit(apartment, 'items')	
		end,
		function(data, menu)
			menu.close()
		end
	)
end

function OpenStorageUnit(apartment, storage)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartment_storage_option',
		{
			title = 'Depo',
			align = 'top-left',
			elements = {
				{label = 'Eşya Al', value = 'get'},
				{label = 'Eşya Koy', value = 'put'}
			}
		},
		function(data, menu)
			menu.close()

			OpenStorageUnitContent(apartment, storage, data.current.value == 'get')
		end,
		function(data, menu)
			menu.close()

			OpenStorageMainMenu(apartment)
		end
	)
end

function OpenStorageUnitContent(apartment, storage, get)
	MySQL.fetchAll('SELECT items FROM motel WHERE identifier=@identifier',
		{
			["@identifier"] = ESX.GetPlayerData().identifier
		},
		function(fetched)
			if fetched ~= nil and fetched[1] ~= nil then
				local items = json.decode(fetched[1].items)

				if get then
					if items[storage] ~= nil then
						local elements = {}

						for k,v in pairs(items[storage]) do
							if v ~= nil and v.count ~= nil then
								if v.count > 0 then
									if v.money == true then
										table.insert(elements, {label = 'Kara Para (' .. v.count .. ' SEK)', value = k, amount = v.count, rawLabel = 'Dirty Money'})								
									else
										table.insert(elements, {label = v.label .. ' x' .. v.count, value = k, amount = v.count, rawLabel = v.label})
									end
								end
							end
						end

						ESX.UI.Menu.CloseAll()
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartment_storage_items',
							{
								title = 'Depolama Alanı',
								align = 'top-left',
								elements = elements
							},
							function(data2, menu)
								menu.close()

				        		local itemName = data2.current.value

				        		OpenQuantityMenu(function(count)
				        			if count <= 0 then
				        				ESX.ShowNotification('~r~Geçersiz miktar 0 dan büyük olması gerekir.')
				        				
				        				return
				        			end

				        			if items[storage] ~= nil and items[storage][itemName] ~= nil then	    
				        				if items[storage][itemName].weapon ~= true then
					        				if items[storage][itemName].count >= count then
						        				items[storage][itemName].count = items[storage][itemName].count - count

						        				if items[storage][itemName].money == true then
						        					ESX.TriggerServerCallback('esx_sommen_motel:addDirtyMoney', function()
										        	end, count)
						        				else
								        			ESX.TriggerServerCallback('esx_sommen_motel:addItem', function()
										        	end, itemName, count)
								        		end

												if items[storage][itemName].count < 1 then
								        			items[storage][itemName] = nil
								        		end

						        				MySQL.Sync.execute('UPDATE motel SET items=@items WHERE identifier=@identifier',
							        				{
							        					["@items"] = json.encode(items),
							        					["@identifier"] = ESX.GetPlayerData().identifier
							        				}
						        				)
							        		else
							        			ESX.ShowNotification('Depolama içermez ~r~x' .. count .. ' ' .. data2.current.rawLabel)
							        		end
							        	end
				        			else
				        				ESX.ShowNotification('Depolama içermez ~r~x' .. count .. ' ' .. data2.current.rawLabel)
				        			end						     

								    OpenStorageUnitContent(apartment, storage, get)   		
				        		end)
							end,
							function(data, menu)
								menu.close()

								OpenStorageUnit(apartment, storage)
							end
						)
					end
				else
					ESX.TriggerServerCallback('esx_sommen_motel:getInventory', function(inventory)
				    	ESX.TriggerServerCallback('esx_sommen_motel:getDirtyMoney', function(money)
					    	local elements = {}

					    	if storage == 'safe' then
					    		table.insert(elements, {label = 'Kara Para (' .. money .. ' SEK)', value = 'dirty', amount = money, money = true})	
					    	else
						    	for i=1, #inventory, 1 do
						      		local item = inventory[i]

						      		if item.count > 0 then
						      			if storage == 'drugs' then
						      				if table.contains(drugs, string.lower(item.name)) then
								        		table.insert(elements, {label = item.label .. ' x' .. item.count, value = item.name, rawLabel = item.label})
								        	end		
							        	else
							        		--if (not table.contains(drugs, string.lower(item.name)) and (not string.startsWith(string.lower(item.name), 'weapon_'))) then
							        		--if (not table.contains(drugs, string.lower(item.name)) and (not string.startsWith(string.lower(item.name), 'weapon_'))) then
								        		table.insert(elements, {label = item.label .. ' x' .. item.count, value = item.name, rawLabel = item.label})
								        	--end
							        	end
						     	 	end
						    	end
						    end

					    	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'apartment_put_stash',
					      		{
					        		title = 'Depo',
					        		align = 'top-left',
					        		elements = elements
					      		},
					     		function(data2, menu)
					     			menu.close()

					        		local itemName = data2.current.value

					        		if data2.current.money == true then
					        			OpenQuantityMenu(function(count)
					        				if count <= 0 then
						        				ESX.ShowNotification('~r~Geçersiz miktar 0 dan büyük olması gerekir.')

						        				return
						        			end

					        				if money >= count then
					        					if items[storage] ~= nil and items[storage][itemName] ~= nil then
							        				items[storage][itemName].count = items[storage][itemName].count + count
							        			else
							        				if items[storage] == nil then
							        					items[storage] = {}
							        				end

							        				items[storage][itemName] = {count = count, label = 'Kara Para', money = true}
							        			end

							        			MySQL.Sync.execute('UPDATE motel SET items=@items WHERE identifier=@identifier',
							        				{
							        					["@items"] = json.encode(items),
							        					["@identifier"] = ESX.GetPlayerData().identifier
							        				}
							        			)

							        			ESX.TriggerServerCallback('esx_sommen_motel:setDirtyMoney', function()
							        			end, (money - count))
					        				else
					        					ESX.ShowNotification("Üzerinde yeteri kadar ~r~KaraPara~w~ ~r~" .. count .. " ~w~yok")
					        				end
					        			end)
					        		elseif data2.current.weapon ~= true then
						        		OpenQuantityMenu(function(count)
						        			if count <= 0 then
						        				ESX.ShowNotification('~r~Geçersiz miktar 0 dan büyük olması gerekir.')

						        				return
						        			end

						        			ESX.TriggerServerCallback('esx_sommen_motel:hasItem', function(has)
						        				if has == true then
						        					if items[storage] ~= nil and items[storage][itemName] ~= nil then
								        				items[storage][itemName].count = items[storage][itemName].count + count
								        			else
								        				if items[storage] == nil then
								        					items[storage] = {}
								        				end

								        				items[storage][itemName] = {count = count, label = data2.current.rawLabel}
								        			end

								        			MySQL.Sync.execute('UPDATE motel SET items=@items WHERE identifier=@identifier',
								        				{
								        					["@items"] = json.encode(items),
								        					["@identifier"] = ESX.GetPlayerData().identifier
								        				}
								        			)

								        			ESX.TriggerServerCallback('esx_sommen_motel:removeItem', function()
								        			end, itemName, count)
						        				else
						        					ESX.ShowNotification("~r~Geçersiz Miktar")
						        				end
						        			end, itemName, count)

										    OpenStorageUnitContent(apartment, storage, get)				       
						        		end)
					        		end
					          	end,
					         	function(data, menu)
					            	menu.close()

									OpenStorageUnit(apartment, storage)
					     		end
					    	)
					  	end)
					end)
				end
			end
		end
	)
end

function OpenApartmentMenu(apartment, owned, x, y, z)
	local values = GetApartmentValues(apartment)

		if owned then
			
			SetEntityCoords(GetPlayerPed(-1), x, y, z - 1.0)

		else
			CachedApartments[apartment] = {
				owned = true,
				items = '[]'
			}

			MySQL.execute('INSERT INTO motel (identifier, items) VALUES (@identifier, @items)', 
				{
					["@identifier"] = ESX.GetPlayerData().identifier,
					["@items"] = '[]',		
				}
			)

			Markers.AddMarker('apartment_' .. apartment, values.enter, 'Motel odasına girmek için ~INPUT_CONTEXT~ tuşuna basın', function()
				OpenApartmentMenu(apartment, true, x, y, z - 1.0)
			end)	

			SetEntityCoords(GetPlayerPed(-1), x, y, z - 1.0)

			--Notifications.PlaySpecialNotification("Motel odasına hoş geldin")				

		end					    	
end

function OpenConfirmationMenu(callback)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'confirmation_menu',
		{
			title = 'Odaya Davet Edildin',
			align = 'top-left',
			elements = {
				{label = 'Gir', value = 'yes'},
				{label = 'Reddet', value = 'no'}
			}
		},
		function(data, menu)
			menu.close()

			callback(data.current.value == 'yes')
		end,
		function(data, menu)
			menu.close()

			callback()
		end
	)
end

function OpenQuantityMenu(callback)
	ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'quantity_menu',
        {
            title = 'Miktar'
        },
        function(data, menu)
            local count = tonumber(data.value)

            if count == nil then
              	ESX.ShowNotification('Geçersiz Miktar')
            else
              	menu.close()
            
              	callback(count)
            end
        end,
        function(data, menu)
        	menu.close()
        end
    )
end

function HasApartment(apartment)
	return CachedApartments[apartment].owned
end

function GetApartmentValues(apartment)
	for k,v in pairs(Apartments) do
		if k == apartment then
			return v
		end
	end
end

function CacheApartments(callback)
	local identifier = ESX.GetPlayerData().identifier

	MySQL.fetchAll('SELECT * FROM motel WHERE identifier = @identifier', 
	{
		["@identifier"] = identifier
	}, 
	function(fetched)
		if fetched ~= nil then
			for i=1, #fetched, 1 do
				local row = fetched[i]

				CachedApartments[row.id] = {owned = true}
			end

			callback()
		end
	end)

	for k,v in pairs(Apartments) do
		if CachedApartments[k] == nil then
			CachedApartments[k] = {owned = false}
		end
	end
end