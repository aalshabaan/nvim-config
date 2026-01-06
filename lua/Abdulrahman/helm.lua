vim.filetype.add({
    pattern = {
        ['.*/templates/.*%.yaml'] = 'helm',
        ['.*/templates/.*%.yml'] = 'helm',
    },
})
