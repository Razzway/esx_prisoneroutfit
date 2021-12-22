fx_version('cerulean')
game('gta5')
author('Razzway')
description('simple menu to change into prisoner outfit')
version('1.1')

shared_scripts {
    'shared/*.lua'
}

client_scripts {
    'services/RageUI/RMenu.lua',
    'services/RageUI/menu/RageUI.lua',
    'services/RageUI/menu/Menu.lua',
    'services/RageUI/menu/MenuController.lua',
    'services/RageUI/components/*.lua',
    'services/RageUI/menu/elements/*.lua',
    'services/RageUI/menu/items/*.lua',
    'services/RageUI/menu/panels/*.lua',
    'services/RageUI/menu/windows/*.lua',

    'client/*.lua',
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'server/*.lua',
}
