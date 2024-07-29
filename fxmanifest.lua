fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'Baylorai Development'
description 'QBCore Hornys Burger Job using ox_lib'
version '0.1.0'

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

files {
    'vehicle/vehicles.meta',
    'vehicle/carvariations.meta',
    'vehicle/carcols.meta',
    'vehicle/handling.meta'
}

data_file 'HANDLING_FILE' 'vehicle/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicle/vehicles.meta'
data_file 'CARCOLS_FILE' 'vehicle/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'vehicle/carvariations.meta'
