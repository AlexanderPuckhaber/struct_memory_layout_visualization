#include <iostream>
#include <stdint.h>
#include <climits>
#include <assert.h>

#pragma pack(push, 1)
struct test_struct_t {
    uint32_t a;
    uint8_t b;
    uint16_t c;
    uint32_t d;
    uint8_t arr[6];
    volatile uint64_t f;
};

int main() {
    test_struct_t hello;

    std::cout << sizeof(hello) << std::endl;

    // make sure we can write to f correctly (alignment has changed)
    hello.f = ULLONG_MAX;

    assert(hello.f == ULLONG_MAX);

    return 0;
}