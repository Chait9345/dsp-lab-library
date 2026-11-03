#include <stdio.h>
#include <math.h>

#define PI 3.141592653589793
#define MAX_N 64

int main(void)
{
    int N, n, k;
    double Xr[MAX_N], Xi[MAX_N], xr[MAX_N], xi[MAX_N];

    printf("Enter number of DFT points (1-%d): ", MAX_N);
    if (scanf("%d", &N) != 1 || N < 1 || N > MAX_N) {
        printf("Invalid N.\n");
        return 1;
    }

    printf("Enter %d frequency-domain values as real imaginary pairs:\n", N);
    for (k = 0; k < N; k++) {
        if (scanf("%lf %lf", &Xr[k], &Xi[k]) != 2) {
            printf("Invalid frequency-domain value.\n");
            return 1;
        }
    }

    for (n = 0; n < N; n++) {
        xr[n] = 0.0;
        xi[n] = 0.0;
        for (k = 0; k < N; k++) {
            xr[n] += Xr[k] * cos(2.0 * PI * k * n / N)
                   - Xi[k] * sin(2.0 * PI * k * n / N);
            xi[n] += Xr[k] * sin(2.0 * PI * k * n / N)
                   + Xi[k] * cos(2.0 * PI * k * n / N);
        }
        xr[n] /= N;
        xi[n] /= N;
    }

    printf("\nIDFT output:\n");
    for (n = 0; n < N; n++)
        printf("x[%d] = %.6f + j(%.6f)\n", n, xr[n], xi[n]);

    return 0;
}
