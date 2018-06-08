==========
pandocmeta
==========

``pandocmeta`` is a Lua_ package that provides a function that converts
Pandoc_ metadata types to a, possibly multi-dimensional, table.

It supports the following types:

* ``MetaBlock``
* ``MetaInlines``
* ``MetaMap``
* ``MetaList``


Caveats
=======

* Does *not* support ``MetaString`` and ``MetaBool``
  (but that doesn't appear to be necessary).

* Does *not* convert numbers to integer
  (there's no way to be sure that this is what you want).


Example
=======

The following code is a simple Lua filter for Pandoc_::

    require 'pandocmeta'

    function main (doc)
        local meta = pandocmeta.totable(doc.meta)
        print(meta['author'][2])
    end

    return {{Pandoc=main}}

It prints the second author of a paper.
(Or ``nil`` if a paper doesn't have a second author.)

Suppose, we save this code as ``printsecondauthor.lua`` and
that we another file, called ``twoauthors.md``, that contains
the following text::

    ---
    title: An example.
    author:
        - Odie
        - Garfield
    ...

    It's raining dogs and cats.


Then, if we run::

    pandoc --lua-filter ./printsecondauthor.lua -o twoauthors.html twoauthors.md

This will print::

    Garfield

See `pandoc-refheadstyle.lua
<https://github.com/odkr/pandoc-refheadstyle.lua>`_ for a real-word
example.


Documentation
=============

Use the source.


Installing ``pandocmeta``
=========================

You use ``pandocmeta`` **at your own risk**. You have been warned.

You need Pandoc_ 2.0 or newer.

If you are using LuaRocks_, simply say::

    luarocks install pandocmeta

Alternatively:

1. Download the source for the `current version
   <https://codeload.github.com/odkr/pandocmeta/tar.gz/v0.1-2>`_.
2. Unpack it.

On most modern Unix systems, you can simply say::

    curl https://codeload.github.com/odkr/pandocmeta/tar.gz/v0.1-2 | tar -xz


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
