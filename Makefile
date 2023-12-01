all: 64-bit 32-bit

64-bit:
	g++ -g test.cpp -c -o test-64.o
32-bit:
	g++ -g test.cpp -c -m32 -o test-32.o

print-struct-64:
	pahole -C test_struct_t test-64.o
print-struct-32:
	pahole -C test_struct_t test-32.o

clean:
	rm *.o