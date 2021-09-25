resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Revive script'

version '1.2.0'

server_scripts {
    'server.lua',
    'locale/en.lua'
}

--[[client_scripts {
    '@es_extended/locale.lua',
    'locales/br.lua',
    'locales/en.lua',
    'locales/fi.lua',
    'locales/fr.lua',
    'locales/es.lua',
    'locales/sv.lua',
    'locales/pl.lua',
    'locales/cs.lua',
    'config.lua',
    'client/main.lua',
    'client/job.lua'
}--]]

dependencies {
    --'es_extended',
    'esx_ambulancejob'
}