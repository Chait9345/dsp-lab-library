#include <stdio.h>
#include <math.h>

#define PI 3.141592653589793
#define MAX_N 64

int main(void)
{
    int N, n, k;
    double x[MAX_N], Xr[MAX_N], Xi[MAX_N];

    printf("Enter number of samples (1-%d): ", MAX_N);
    if (scanf("%d", &N) != 1 || N < 1 || N > MAX_N) {
        printf("Invalid N.\n");
        return 1;
    }

    printf("Enter %d time-domain samples:\n", N);
    for (n = 0; n < N; n++) {
        if (scanf("%lf", &x[n]) != 1) {
            printf("Invalid sample.\n");
            return 1;
        }
    }

    for (k = 0; k < N; k++) {
        Xr[k] = 0.0;
        Xi[k] = 0.0;
        for (n = 0; n < N; n++) {
            Xr[k] += x[n] * cos(2.0 * PI * k * n / N);
            Xi[k] -= x[n] * sin(2.0 * PI * k * n / N);
        }
    }

    printf("\nDFT output:\n");
    for (k = 0; k < N; k++)
        printf("X[%d] = %.6f + j(%.6f)\n", k, Xr[k], Xi[k]);

    return 0;
}
