#include <stdio.h>
#include <math.h>
#define PI 3.14159265
float m[128];

int main(void)
{
    int i;
    for (i = 0; i < 128; i++) {
        m[i] = sin(2 * PI * i / 64.0);
        printf("%f\n", m[i]);
    }
    return 0;
}
