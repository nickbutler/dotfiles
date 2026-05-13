local function lspcmd(name, scope, cmd)
  U.lcmd(name, 'vim.lsp.' .. scope .. '.' .. cmd)
end

U.lcmd('WSList',         'show_workspace_folders')
lspcmd('WSAdd',          'buf',        'add_workspace_folder')
lspcmd('WSRemove',       'buf',        'remove_workspace_folder')
lspcmd('Definition',     'buf',        'definition')
lspcmd('Declaration',    'buf',        'declaration')
lspcmd('Implementation', 'buf',        'implementation')
lspcmd('SignatureHelp',  'buf',        'signature_help')
lspcmd('TypeDefinition', 'buf',        'type_definition')
lspcmd('RenameVar',      'buf',        'rename')
lspcmd('Hover',          'buf',        'hover')
lspcmd('CodeAction',     'buf',        'code_action')
lspcmd('References',     'buf',        'references')
lspcmd('Format',         'buf',        'formatting')
U.lcmd('NextError',      'vim.diagnostic.goto_prev')
U.lcmd('PrevError',      'vim.diagnostic.goto_next')
U.lcmd('ShowError',      'vim.diagnostic.open_float')

local on_attach = function(_, b)
  U.bopt(b, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  U.bnmc(b, 'ge', 'ShowError')
  U.bnmc(b, 'gd', 'Definition')
  U.bnmc(b, 'gh', 'SignatureHelp')
  U.bnmc(b, 'K',  'Hover')
  U.bnmc(b, ']e', 'PrevError')
  U.bnmc(b, '[e', 'NextError')
end

vim.lsp.config.ruff = {
  on_attach = on_attach,
  cmd = { 'ruff', 'server' },
}
vim.lsp.enable('ruff')
