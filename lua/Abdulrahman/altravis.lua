vim.filetype.add({
    extension = {
	ospp = 'json',
	snmp = 'json',
	scripts = 'json',
	keycloak = 'json',
	variables = 'json',
	view = 'json',
	web = 'json',
	alarms = 'json',
	modbus = 'json',
	mqtt = 'json',
	rules = 'lua'
    },
    pattern = {
	['.*%.ospp*'] = 'json',
	['.*%.snmp*'] = 'json',
	['.*%.scripts*'] = 'json',
	['.*%.variables*'] = 'json',
	['.*%.view*'] = 'json',
	['.*%.web*'] = 'json',
	['.*%.alarms*'] = 'json',
	['.*%.modbus*'] = 'json',
	['.*%.mqtt*'] = 'json',
	['.*%.analytics*'] = 'json',
	['.*%.drawio*'] = 'xml',
	['stack%..*'] = 'yaml'
    },
    filename = {
	['module.service'] = 'yaml'
    }
})
