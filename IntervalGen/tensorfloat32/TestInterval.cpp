#include "stdio.h"
#include "math.h"

void CheckFileSanity(char* fileName) {
  FILE* f = fopen(fileName, "r");
  double data[3];
  double redInput = 0;
  double relIntSize = 100.0;
  double relLB = 0.0, relUB = 0.0;
  unsigned total = 0;
  unsigned smallInterval = 0;
  double smallest = 0;
  double smallest2 = 0;
  double smallest2val = 0;
  double largest = 0;
  double largestval = 0;
  unsigned long sindex = 0;
  
  fread(&smallest, sizeof(double), 1, f);
  fread(&smallest2, sizeof(double), 1, f);
  fread(&smallest2, sizeof(double), 1, f);
  fread(&smallest2, sizeof(double), 1, f);
  fread(&smallest2val, sizeof(double), 1, f);
  fseek(f, 0, SEEK_END);
  fseek(f, -sizeof(double) * 3, SEEK_CUR);
  fread(&largest, sizeof(double), 1, f);
  fread(&largestval, sizeof(double), 1, f);
  fseek(f, 0, SEEK_SET);
  
  unsigned long count = 0;
  
  while (fread(data, sizeof(double), 3, f) == 3) {

    if (data[2] < data[1]) {
      printf("x = %.100e\n", data[0]);
      printf("x = %.100e\n", data[1]);
      printf("x = %.100e\n", data[2]);
      printf("uh oh\n");
    }
    
    if (data[1] != 0 && data[2] != 0) {
      double temp = (data[2] - data[1]) / data[2];
      if (temp < 1.0e-11) smallInterval++;
      if (temp < relIntSize && data[0] != 0) {
	redInput = data[0];
	relIntSize = temp;
	relLB = data[1];
	relUB = data[2];
	sindex = count;
      }
    }
    
    count++;
    total++;
  }
  
  printf("Smallest relative interval size:\n");
  printf("index = %lu\n", sindex);
  printf("%.100e\n", redInput);
  printf("%.50e\n", relIntSize);
  printf("%.50e, (%lu)\n", relLB, *(unsigned long *)&relLB);
  printf("%.50e, (%lu)\n", relUB, *(unsigned long *)&relUB);
  printf("%u/%u are small intervals\n", smallInterval, total);
  printf("Total intervals = %u\n", total);
  
  printf("Smallest Input: %.100e\n", smallest);
  printf("2nd smallest input: %.100e\n", smallest2);
  printf("%.100e\n", smallest2val);
  printf("Largest Input : %.100e\n", largest);
  printf("%.100e\n", largestval);
}

int main(int argc, char** argv) {
  CheckFileSanity(argv[1]);
  
  return 0;
}
