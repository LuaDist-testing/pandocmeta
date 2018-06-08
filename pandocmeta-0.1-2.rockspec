-- This file was automatically generated for the LuaDist project.

package = "pandocmeta"
version = "0.1-2"
-- LuaDist source
source = {
  tag = "0.1-2",
  url = "git://github.com/LuaDist-testing/pandocmeta.git"
}
-- Original source
-- source = {
--    url = "git://github.com/odkr/pandocmeta.lua",
--    tag = "v0.1-2"
-- }
description = {
   summary = "Convert Pandoc metadata types to a table.",
   detailed = [[
It supports the following Pandoc metadata types:
   * MetaBlock
   * MetaInlines
   * MetaMap
   * MetaList

See <https://github.com/odkr/pandocmeta.lua> for details.
]],
   license = "MIT" -- or whatever you like
}
dependencies = {
   "lua >= 5.3, <6"
}
build = {
    type = "builtin",
    modules = {
        pandocmeta = "pandocmeta.lua/src/pandocmeta.lua"
    }
}