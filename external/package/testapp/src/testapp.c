#include <stdio.h>
#include <unistd.h>

int main(void)
{
    printf("Hello from Glasnost!\n");

    while (1) {
        sleep(10);
    }

    return 0;
}
