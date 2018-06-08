==========
pandocmeta
==========

``pandocmeta`` is a Lua_ package that provides a function that converts
Pandoc_ metadata types to a, possibly multi-dimensional, table.

Suppose, for example, your document has `this YAML header
<https://pandoc.org/MANUAL.html#extension-yaml_metadata_block>`_::

    ---
    title: The document title
    author:
    - name: Author One
      affiliation: University of Somewhere
    - name: Author Two
      affiliation: University of Nowhere
    ...

``pandocmeta`` allows you to access the affiliation of the second
author by saying::

    require 'pandocmeta'

    function Pandoc (doc)
        meta = pandocmeta.totable(doc.meta)
        affiliation = meta['author'][2]['affiliation']
    end


Caveats
=======

``pandocmeta`` does *not* convert numbers to integer
(there's no way to be sure that this is what you want).


Example
=======

See `pandoc-refheadstyle.lua
<https://github.com/odkr/pandoc-refheadstyle.lua>`_ for a real-word
example.


Documentation
=============

See the `package documentation <doc/index.html>`_.

And use the source.


Installing ``pandocmeta``
=========================

You use ``pandocmeta`` **at your own risk**. You have been warned.

You need Pandoc_ 2.0 or newer.

If you are using LuaRocks_, simply say::

    luarocks install pandocmeta

Alternatively:

1. Download the source for the `current version
   <https://codeload.github.com/odkr/pandocmeta/tar.gz/v0.2-0>`_.
2. Unpack it.

On most modern Unix systems, you can simply say::

    curl https://codeload.github.com/odkr/pandocmeta/tar.gz/v0.2-0 | tar -xz


Contact
=======

If there's something wrong with ``pandocmeta``, `open an issue
<https://github.com/odkr/pandocmeta/issues>`_.


License
=======

Copyright 2018 Odin Kroeger

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


Further Information
===================

GitHub:
<https://github.com/odkr/pandocmeta.lua>

LuaRocks:
<http://luarocks.org/modules/odkr/pandocmeta>


.. _Lua: https://lua.org/

.. _LuaRocks: https://luarocks.org/

.. _Pandoc: https://www.pandoc.org/
