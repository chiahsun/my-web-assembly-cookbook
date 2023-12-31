#include <stdio.h>
#include <emscripten/emscripten.h>

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

