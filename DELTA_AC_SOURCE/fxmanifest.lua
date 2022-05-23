fx_version 'adamant'
games {'gta5'}

client_script {
	'configs/*.lua',
	'tables/*.lua',
	'client.lua'
}


server_scripts {
	'configs/*.lua',
	'tables/*.lua',
	'whitelist/*.lua',
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
     'server.lua'
}

ui_page 'index.html'

files {
	'index.html'
}



