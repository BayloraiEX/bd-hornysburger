fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Baylorai Development'
description 'QBCore Hornys Burger Job using ox_lib'
version '0.0.1'

client_scripts {
    'client/*.lua',
}

shared_scripts {
    '@ox_lib/init.lua',
	'config.lua',
}

server_scripts {
    'server/*.lua',
}

dependencies {
    'ox_lib'
}