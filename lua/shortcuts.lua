function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

nmap('<F1>', ':Telescope find_files<CR>')
nmap('<F2>', ':Telescope buffers<CR>')

-- nmap('<A-left>', ':BufferPrevious<CR>')
-- nmap('<A-right>', ':BufferNext<CR>')
nmap('<A-1>', ':BufferGoto 1<CR>')
nmap('<A-2>', ':BufferGoto 2<CR>')
nmap('<A-3>', ':BufferGoto 3<CR>')
nmap('<A-4>', ':BufferGoto 4<CR>')
nmap('<A-5>', ':BufferGoto 5<CR>')
nmap('<A-6>', ':BufferGoto 6<CR>')
nmap('<A-7>', ':BufferGoto 7<CR>')
nmap('<A-8>', ':BufferGoto 8<CR>')
nmap('<A-9>', ':BufferGoto 9<CR>')
nmap('<A-0>', ':BufferLast<CR>')
nmap('<A-q>', ':BufferClose<CR>')
