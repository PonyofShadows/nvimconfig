-- ccls for C , C++ and Objctive-C
local lspconfig = require("lspconfig")
lspconfig.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build";
    index = {
      threads = 0;
    };
    clang = {
      excludeArgs = { "-frounding-math"} ;
    };
  }
}
-- cmake-language-server
require'lspconfig'.cmake.setup{}
-- jedi-language-server for python
require'lspconfig'.jedi_language_server.setup{}
-- rls for rust
lspconfig.rls.setup {
  settings = {
    rust = {
      unstable_features = true,
      build_on_save = false,
      all_features = true,
    },
  },
}
require'lspconfig'.rls.setup{}
-- texlab for (La)Tex
require'lspconfig'.texlab.setup{}
