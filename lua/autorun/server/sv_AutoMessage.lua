if SERVER then

    -- Configuration : messages et intervalle en secondes
    local adverts = {
        "Bienvenue sur notre serveur DarkRP !",
        "Pensez à lire les règles via !rules.",
        "Rejoignez notre Discord pour plus d'infos !",
        "Merci de respecter le RP et de vous amuser :)"
    }

    local interval = 300 -- 300 secondes = 5 minutes

    -- Fonction d'envoi
    local function BroadcastAdvert()
        for _, msg in ipairs(adverts) do
            PrintMessage(HUD_PRINTTALK, "[PUB] " .. msg)
        end
    end

    -- Timer qui répète l'envoi
    timer.Create("AutoAdvertTimer", interval, 0, function()
        BroadcastAdvert()
    end)

end
