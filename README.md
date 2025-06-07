# ZenLabs-Engine-Sound-Menu
In this .readme file, you will find everything that is needing changed before you are able to correctly place the resource into your FiveM server.
# client_config.lua edits
        -- Engine Sound Name/Label --> Hash of engine audio (what you'd normally put in vehicles.meta)
        ["Baller"] = "baller",
        ["Adder"] = "adder",
        ["Lazer"] = "lazer"
Keybind = "", -- E.G F7 ---> https://docs.fivem.net/docs/game-references/controls/
MenuPosition = "bottom-right", -- bottom-right, bottom-left, top-right, top-left

# server_config.lua edits
        -- your permission function here - you can integrate your framework for jobs/perms etc
        return IsPlayerAceAllowed(src, 'enginesoundmenu')

        If you have frameworks such as ESX/QBCore/QBox, then you will need to integrate some permission function before the return IsPlayerAceAllowed part.
 
