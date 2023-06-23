#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main() {
    srand(time(NULL));
    int num_to_guess = rand() % 1000 + 1;
    int current_guess = 0;
    do {
        printf("Try to guess the number (1-1000): ");
        scanf("%d", &current_guess);
        if (current_guess == num_to_guess) {
            printf("Yes!\n");
            break;
        } else {
            if (num_to_guess < current_guess) {
                printf("Less\n");
            } else {
                printf("More\n");
            }
        }
    } while (current_guess != num_to_guess);
    return 0;
}
