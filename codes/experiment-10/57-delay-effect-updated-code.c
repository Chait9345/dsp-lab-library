#include "L138_LCDK_aic3106_init.h"
#include <stdint.h>

#define BUF_SIZE 24000

static int16_t buffer[BUF_SIZE];
static int i = 0;

static int16_t saturate(int32_t x)
{
    if (x > 32767) return 32767;
    if (x < -32768) return -32768;
    return (int16_t)x;
}

interrupt void interrupt4(void)
{
    int16_t input, delayed, output;

    input = input_left_sample();
    delayed = buffer[i];
    output = saturate((int32_t)input + delayed);

    /* No feedback: only one delayed copy, so this is delay, not echo. */
    buffer[i] = input;
    i = (i + 1) % BUF_SIZE;

    output_left_sample(output);
    return;
}

int main(void)
{
    int j;

    for (j = 0; j < BUF_SIZE; j++)
        buffer[j] = 0;

    L138_initialise_intr(FS_48000_HZ, ADC_GAIN_0DB,
                         DAC_ATTEN_0DB, LCDK_MIC_INPUT);
    while (1);
}
