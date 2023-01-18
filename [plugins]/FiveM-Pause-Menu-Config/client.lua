function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

local config = {
    ["TITLE"] = "Benvenuti nel server di krevan76!",
    ["SUBTITLE"] = "Qui ti divertirai tantissimo fidati!",
    ["MAP"] = "Mappa",
    ["STATUS"] = "Statistiche",
    ["GAME"] = "Gioco",
    ["INFO"] = "Informazioni",
    ["SETTINGS"] = "Impostazioni",
    ["R*EDITOR"] = "R*Editor"
}

Citizen.CreateThread(function()
    while true do
    Citizen.Wait(0)
        N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunction()
        N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
        PushScaleformMovieFunctionParameterString(config["TITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
        PushScaleformMovieFunctionParameterBool(true)
        PopScaleformMovieFunctionVoid()
    end
end)

Citizen.CreateThread(function()
    AddTextEntry('PM_THDR_GTAO', config["Benvenuti nel server di krevan76!"]))
    AddTextEntry('PM_PANE_LEAVE', config["Sei sicuro di voler uscire?"])
    AddTextEntry('PM_PANE_QUIT', config["Esci da FiveM"])
    AddTextEntry('PM_SCR_MAP', config["Mappa"])
    AddTextEntry('PM_SCR_STA', config["Statistiche"])
    AddTextEntry('PM_SCR_GAM', config["Gioco"])
    AddTextEntry('PM_SCR_INF', config["Informazioni"])
    AddTextEntry('PM_SCR_SET', config["Impostazioni"])
    AddTextEntry('PM_SCR_RPL', config["R*Editor"])
end)
