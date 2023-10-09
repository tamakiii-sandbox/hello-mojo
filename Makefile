.PHONY: all

all: hello

clean:
	rm -rf hello

hello: hello.mojo
	mojo build $<
