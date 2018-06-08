project = 'pandocmeta.lua'
description = "Convert Pandoc metadata types to a table."
full_description = [[
Provides a function that converts
Pandoc metadata types to a, possibly multi-dimensional, table.

Suppose, for example, your document has this YAML header:

   ---
   title: The document title
   author:
   - name: Author One
     affiliation: University of Somewhere
   - name: Author Two
     affiliation: University of Nowhere
   ...

pandocmeta allows you to access the affiliation of the second
author by saying::

   require 'pandocmeta'

   function Pandoc (doc)
       meta = pandocmeta.totable(doc.meta)
       affiliation = meta['author'][2]['affiliation']
   end

See <https://github.com/odkr/pandoc-refheadstyle.lua>
for a real-word example.

See <https://github.com/odkr/pandocmeta.lua> for details.
]]
readme = 'README.md'
file = { 'src/pandocmeta.lua' }
format = 'markdown'
dir = 'docs'
