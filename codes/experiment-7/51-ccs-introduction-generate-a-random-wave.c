#include <stdio.h>
#include <stdlib.h>
float m[128];

int main(void)
{
    int i;
    for (i = 0; i < 128; i++) {
        m[i] = (float)rand() / RAND_MAX - 0.5f;
        printf("%f\n", m[i]);
    }
    return 0;
}
