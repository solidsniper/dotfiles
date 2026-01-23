local chan

local function ensure_job()
  if chan then
    return chan
  end
  chan = vim.fn.jobstart({ 'nvim-api' }, { rpc = true })
  return chan
end

vim.api.nvim_create_user_command('CopyToClipboard', function()
  vim.fn.rpcrequest(ensure_job(), 'copytoclipboard')
end, { nargs = '*' })
