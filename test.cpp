#include <iostream>
#include <stdint.h>

struct test_struct_t {
    uint32_t a;
    uint8_t b;
    uint16_t c;
    uint32_t d;
    uint8_t arr[6];
    uint64_t f;
};

int main() {
    test_struct_t hello;

    std::cout << sizeof(hello);

    return 0;
}