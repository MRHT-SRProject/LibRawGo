.PHONY clean build

default:
	clean build

clean:
	rm -rf build

build:
	mkdir -p build && cd build && cmake .. && make && mv ./*.go ../librawgo/