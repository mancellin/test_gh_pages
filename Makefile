all: build/index.html

build/index.html: index.md
	mkdir -p build/
	pandoc -o $@ $<

test: build/index.html
	firefox $<

clean:
	rm -rf build/

.PHONY: all test clean
