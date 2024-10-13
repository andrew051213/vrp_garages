fx_version 'cerulean'
game 'gta5'

author 'Andrew'
description 'VRP Garages System'
version '1.0.0'

client_scripts {
    '@vrp/client/Tunnel.lua',
    '@vrp/client/Proxy.lua',
    'client/cl_*.lua'
}

shared_script 'cfg/config.lua'

server_scripts {
    '@vrp/lib/utils.lua',
    'server/sv_*.lua'
}

ui_page 'web/index.html'

files {
    'web/*.*',
    'web/**/*.*'
}

shared_script '@nac/nova-module.lua'