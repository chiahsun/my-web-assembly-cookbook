#include <stdio.h>
#include <emscripten/emscripten.h>
#include <math.h>

int main() {
    printf("Hello World from Hello 3\n");
    return 0;
}

#ifdef __cplusplus
#define EXTERN extern "C"
#else
#define EXTERN
#endif

EXTERN EMSCRIPTEN_KEEPALIVE void myFunction(int argc, char** argv) {
    printf("My Function Called\n");
}

// https://emscripten.org/docs/porting/connecting_cpp_and_javascript/Interacting-with-code.html#calling-compiled-c-functions-from-javascript-using-ccall-cwrap
EXTERN EMSCRIPTEN_KEEPALIVE int int_sqrt(int x) {
    return sqrt(x);
}