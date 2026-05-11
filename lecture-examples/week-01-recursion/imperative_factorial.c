#include <stdio.h>

int fact(int n) {
    int sofar;
    sofar = 1;

    while (n > 1) {
        sofar = sofar * n;
        n--;
    }

    return sofar;
}

int main() {
    int result = fact(5);
    printf("Factorial: %d\n", result);
    return 0;
}
