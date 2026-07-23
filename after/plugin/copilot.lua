local proxy = vim.fn.getenv("HTTPS_PROXY")
if proxy then
    vim.g['copilot_proxy'] = proxy
    vim.g['copilot_proxy_strict_ssl'] = false
end

-- vim.keymap.set('i', '<C-J>', vim.fn['copilot#Accept'])
-- vim.g['copilot_no_tab_map'] = true
