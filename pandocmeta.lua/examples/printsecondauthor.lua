require 'pandocmeta'

function main (doc)
    local meta = pandocmeta.totable(doc.meta)
    print(meta['author'][2])
end

return {{Pandoc=main}}
