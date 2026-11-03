#include <stdio.h>
#include <math.h>
#define PI 3.14159265
#define N 8
float x[N] = {1, 1, 2, -2, 3, 0, 5, 1};
float Xr[N], Xi[N];

int main(void)
{
    int k, n;
    for (k = 0; k < N; k++) {
        Xr[k] = 0;
        Xi[k] = 0;
        for (n = 0; n < N; n++) {
            Xr[k] += x[n] * cos(2 * PI * k * n / N);
            Xi[k] -= x[n] * sin(2 * PI * k * n / N);
        }
        printf("X[%d] = %7.3f + j(%7.3f)\\n", k, Xr[k], Xi[k]);
    }
    return 0;
}
