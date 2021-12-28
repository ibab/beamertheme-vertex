all: build/main.pdf

build/main.pdf: main.tex beamerthemevertex.sty | build
	lualatex --shell-escape --output-directory=build $^

build:
	mkdir -p build

clean:
	rm -rf build
