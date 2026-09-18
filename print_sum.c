#include <stdio.h>

extern unsigned char ram[];   // RAM declared in assembly
extern void fill_ram(void);   // Assembly function

int main()
{
    fill_ram();   // Run assembly code

    printf("The sum is: \n");

    for(int i = 0x5A; i <= 0x5A; i++)
    {
        printf("%02d ", ram[i]);
    }

    printf("\n");

    return 0;
}
