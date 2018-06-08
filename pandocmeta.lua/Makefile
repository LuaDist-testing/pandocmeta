test: test-doc-ex-1 test-doc-ex-2 test-code-gen-types

test-doc-ex-1:
	pandoc --lua-filter test/doc-ex-1.lua test/doc-ex-1.md -o /dev/null

test-doc-ex-2:
	pandoc --lua-filter test/doc-ex-2.lua test/doc-ex-2.md -o /dev/null

test-code-gen-types:
	pandoc --lua-filter test/code-gen-types.lua -o /dev/null /dev/null

.PHONY: test test-doc-ex-1 test-doc-ex-2 test-code-gen-types
