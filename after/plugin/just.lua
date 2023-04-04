require('tree-sitter-just').setup({
  install_info = {
    branch = "main",
    files = { "src/parser.c", "src/scanner.cc" },
    url = "https://github.com/IndianBoy42/tree-sitter-just"
  },
  maintainers = { "@IndianBoy42" },
})
