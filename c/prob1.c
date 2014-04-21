#include <stdio.h>

int simple_sum (void);
int main (void) 
{
  printf("answer: %d\n", simple_sum());
  return 0;
}

int simple_sum (void)
{
  int sum = 0;
  for (int n = 1; n < 1000; n++){
    if (n % 3 == 0 || n % 5 == 0)
      sum += n;
  }
  return sum;
}

