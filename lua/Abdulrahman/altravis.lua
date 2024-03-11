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
        rules = 'lua',
        template = 'json',
        ["network-monitoring"] = 'json',
        lookup = 'csv'
    },
    pattern = {
        ['.*%.ospp.*'] = 'json',
        ['.*%.snmp.*'] = 'json',
        ['.*%.scripts.*'] = 'json',
        ['.*%.variables.*'] = 'json',
        ['.*%.view.*'] = 'json',
        ['.*%.web.*'] = 'json',
        ['.*%.alarms.*'] = 'json',
        ['.*%.modbus.*'] = 'json',
        ['.*%.network-monitoring.*'] = 'json',
        ['.*%.mqtt.*'] = 'json',
        ['.*%.analytics.*'] = 'json',
        ['.*%.drawio.*'] = 'xml',
        ['.*%.lookup.*'] = 'csv',
        ['stack%..*'] = 'yaml.docker-compose',
        ['.*compose.*'] = 'yaml.docker-compose',
    },
    filename = {
        ['module.service'] = 'yaml.docker-compose',
    }
})
