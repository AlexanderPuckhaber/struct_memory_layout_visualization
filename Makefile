all: 64-bit 32-bit pack-64-bit pack-32-bit

64-bit:
	g++ -g test.cpp -o test-64.o
32-bit:
	g++ -g test.cpp -m32 -o test-32.o

print-struct-64:
	pahole -C test_struct_t test-64.o
print-struct-32:
	pahole -C test_struct_t test-32.o

pack-64-bit:
	g++ -g test-pack.cpp -o test-pack-64.o
pack-32-bit:
	g++ -g test-pack.cpp -m32 -o test-pack-32.o

print-pack-struct-64:
	pahole -C test_struct_t test-pack-64.o
print-pack-struct-32:
	pahole -C test_struct_t test-pack-32.o

clean:
	rm *.o