#include "L138_LCDK_aic3106_init.h"

interrupt void interrupt4(void)
{
    uint32_t sample;

    sample = input_sample();   /* Read left and right channels. */
    output_sample(sample);     /* Send the same sample to the output. */
    return;
}

int main(void)
{
    L138_initialise_intr(FS_48000_HZ, ADC_GAIN_0DB,
                         DAC_ATTEN_0DB, LCDK_LINE_INPUT);
    while (1);
}
