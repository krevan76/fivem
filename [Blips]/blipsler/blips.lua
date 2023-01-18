
	local blips = {
		-- The Prison

    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
   -- {title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
   -- {title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
    --{title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},
   -- {title="Gas Station", colour=1, id=361, x=2581.321, y=362.039, 108.468},


		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)


