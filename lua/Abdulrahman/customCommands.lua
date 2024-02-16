vim.api.nvim_create_user_command('BfPrune', function ()
	print('Clearing buffers')
end,
{})
