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
        coms = 'json',
        reports = 'json',
        rules = 'lua',
        template = 'json',
        maps = 'json',
        ["network-monitoring"] = 'json',
        lookup = 'csv',
        collections = 'json'
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
        ['.*%.coms.*'] = 'json',
        ['.*%.reports.*'] = 'json',
        ['.*%.collections.*'] = 'json',
        ['.*%.maps.*'] = 'json',
        ['.*%.drawio.*'] = 'xml',
        ['.*%.lookup.*'] = 'csv',
        ['stack%..*'] = 'yaml.docker-compose',
        ['.*compose.**'] = 'yaml.docker-compose',
    },
    filename = {
        ['module.service'] = 'yaml.docker-compose',
    }
})
