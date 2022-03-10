resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'
description 'Pixel Watermark'
ui_page('html/index.html')
client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua',
}
files({
    'html/index.html',
    'html/css/style.css',
    'html/css/bootstrap.min.css',
    'html/js/script.js',
    'html/js/bootstrap.min.js'
})
