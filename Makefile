CC=tcc

all: build test

build:
	mkdir -p bin
	$(CC) -o ./bin/c ts.c
	javac -d ./bin ts.java
	nasm -felf64 ts.asm
	ld -S -o bin/asm ts.o
	rm ts.o
	rustc -O -o bin/rust ts.rs
	strip bin/rust

test:
	echo "Testing.."
	./bin/c 2>/dev/null || echo "C: Success!"
	java -cp bin ts >/dev/null || echo "Java: Success!"
	rm *.log
	./bin/asm 2>/dev/null || echo "Assembler: Success!"
	./bin/rust 2>/dev/null || echo "Rust: Success!"

clean:
	rm -rf bin

.PHONY: build test clean
