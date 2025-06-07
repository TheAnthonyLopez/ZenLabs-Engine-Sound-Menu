fx_version 'cerulean'
game 'gta5'

author 'Anthony // ZenLabs Development'
version '1.0.1'
description 'ZenLabs Engine Sound Menu - Change your vehicle's engine sound. Other player's hear it!'

shared_script '@ox_lib/init.lua'
lua54 'yes'

client_scripts {
    'client_config.lua',
    'client.lua',
}

server_scripts {
    'server_config.lua',
    'server.lua',
}

dependency 'ox_lib'
