#pragma once
#include "Common.h"
#include <string>
#include <queue>
#include <map>
#include <cstdio>
#include "math.h"

mpfr_t mval;

int fileIndex = 0;

/*################################################
 Helper function declaration begin
 ################################################*/

// Compute the rounding interval for a float value passed by argument 1. Lb and
// Ub are returned in 2nd and 3rd argument, respectively
// Argument 1   (float)  : float value v
// Argument 2   (double) : lb of rounding interval
// Argument 3   (double) : ub of rounding interval
void CalculateInterval(float, double&, double&);

// Error message when the initial guess on lb and ub leads to a result that is
// outside of the rounding interval
void CalcRedIntErrorMsg1(float, double, double, double, double,
                         double, double, double);

// Create a new temporary file name based on the largeFileName that is passed
// Argument 1   (string) : a filename used to create a new temporary file name
// return value (string) : a new temporary file name
string GetNewFileName(string largeFileName);

// Copy data from source array to dest array. very simple helper function
void CopyData(double dest[3], double source[3]);

// Read 3 doubles from f. A simple helper function to include some sanity check
bool ReadData(FILE* f, double dest[3]);

// Writes a map of intervals to a file specified by newFileName
// Argument 1   (map)    : a map containing reduced inputs and intervals
// Argument 2   (string) : name of the file to write the reduced inputs and
//                         interval information into.
void SaveIntervalsToAFile(std::map<double, IntData> intervals,
                          string newFileName);

/*################################################
 Helper function declaration end
 ################################################*/


// Description of an elementary function for 32-bit float math library. This
// class should be used if the output compensation function uses 1 approximation
// All functions must be implemented for each elementary function f(x) except
// for FromMPFR() function, which is the same for all elementary function.
class IntervalGenerator2 {
    public :
    
    // The oracle that computes the correctly rounded result.
    // Argument 1   (float) : original input x
    // return value (float) : correctly rounded result of f(x)
    float MpfrCalculateFunction(float);
    
    // Defines the special case inputs. Accepts original input x. Returns
    // whether the input is a special case and f(x) for the input x.
    // Argument 1   (float) : original input x
    // return value (bool)  : whether x is special case or not
    // return value (float&): returned via argument 2. the result of f(x) if
    //                        x is a special case input
    bool ComputeSpecialCase(float, float&);
    
    // Range reduction function. Accepts original input x and returns the
    // reduced input x'
    // Argument 1   (double) : original input x
    // return value (double) : reduced input x'
    double RangeReduction(float);
    
    // Output compensation function. Accepts y' and original input x and returns
    // the actual output y
    // Argument 1   (double) : original input x (Used to compute constant values
    //                         used in the output compensation
    // Argument 2   (double) : y1' = P1(x')
    // Argument 3   (double) : y2' = P2(x')
    // return value (double) : approximation of f(x)
    double OutputCompensation(float, double, double);
    
    // In some cases, we may need special treatment for the reduced interval.
    // This function is used to specify whether we should treat the reduced
    // interval as a special case. In that case, the function should return true
    // and also pass the customized [lb, ub] of the reduced input.
    // Argument 1   (double) : original input x
    // Argument 2   (double) : initial lb guess for reduced interval of P1(x')
    // return value (bool)   : returned as argument 3. whether the lb is a
    //                         special case for P1(x')
    // return value (double) : returned as argument 4. Lb for P1(x')
    // Argument 5   (double) : initial ub guess for reduced interval of P1(x')
    // return value (bool)   : returned as argument 6. whether the ub is a
    //                         special case for P1(x')
    // return value (double) : returned as argument 7. Ub for P1(x')
    // Argument 2   (double) : initial lb guess for reduced interval of P2(x')
    // return value (bool)   : returned as argument 9. whether the lb is a
    //                         special case for P2(x')
    // return value (double) : returned as argument 10. Lb for P2(x')
    // Argument 5   (double) : initial ub guess for reduced interval of P2(x')
    // return value (bool)   : returned as argument 12. whether the ub is a
    //                         special case for P2(x')
    // return value (double) : returned as argument 13. Ub for P2(x')
    void SpecCaseRedInt(float,
                        double, bool&, double&, double, bool&, double&,
                        double, bool&, double&, double, bool&, double&);
    
    // Provides an initial guess on what the reduced interval should be. This
    // function should be used when output compensation function only uses one
    // approximation function.
    // Argument 1   (double) : reduced input x
    // return value (double) : returned via argument 2. the lb for P1(x')
    // return value (double) : returned via argument 3. the ub for P1(x')
    // return value (double) : returned via argument 4. the lb for P2(x')
    // return value (double) : returned via argument 5. the ub for P2(x')
    void GuessInitialLbUb(double, double&, double&, double&, double&);
    
    // Computes reduced intervals from xlow to xhigh. If xlow > xhigh, then we
    // compute reduced intervals from 0 to 0x100000000. The reduced intervals are
    // added to the file since it is theoretically possible to have 2^32 reduced
    // intervals
    // Argument 1   (ull)   : the lower bound of input domain x
    // Argument 2   (ull)   : the upper bound of input domain x
    // Argument 3   (FILE*) : to store the reduced inputs and range for P1(x')
    // Argument 4   (FILE*) : to store the reduced inputs and range for P2(x')
    // * Note: Function adds reduced input, reduced interval lower bound, and
    //         upperbound in filename. Thus, each input will add 24 bytes to the
    //         file. The resulting file will have duplicate reduced inputs.
    void ComputeReducedIntervals(unsigned long long, unsigned long long,
                                 FILE*, FILE*);
    
    // Computes reduced interval for one input x. The reduced intervals are
    // added to the file
    // Argument 1   (float) : original input x
    // Argument 2   (FILE*) : to store reduced input and interval for P1(x')
    // Argument 3   (FILE*) : to store reduced input and interval for P2(x')
    void ComputeReducedInterval(float, FILE*, FILE*);
    
    // Based on special case, range reduction, and output compensation function
    // create a file containing reduced inputs and reduced intervals. This file
    // contains merged reduced intervals sorted by reduced input.
    // Argument 1   (char*) : to store reduced constraint for P1(x')
    // Argument 2   (char*) : to store reduced constraint for P2(x')
    void CreateReducedIntervalFile(char*, char*);

    // Based on special case, range reduction, and output compensation function
    // create a file containing reduced inputs and reduced intervals. This file
    // contains merged reduced intervals sorted by reduced input.
    // Argument 1   (ull)   : lower bound of the input domain
    // Argument 2   (ull)   : upper bound of the input domain
    // Argument 3   (char*) : the name of the file to store P1(x') constraints
    // Argument 4   (char*) : the name of the file to store P2(x') constraints
    void CreateReducedIntervalFile(unsigned long long, unsigned long long,
                                   char*, char*);
    
    // Given a file with filename that contains reduced inputs and intervals,
    // merge same reduced inputs and sort them by reduced input.
    // It uses a type of merge sort. This function will also create several
    // temporary files.
    void SortIntervalFile(string, string);
    
    // Given two filenames, take reduced inputs and intervals and merge them
    // in an ascending order by inputs. Then save it to a file with the
    // third filename
    // Argument 1   (string) : a file containing reduced inputs and intervals
    // Argument 2   (string) : another file containing reduced inputs and
    //                         intervals
    // Argument 3   (string) : A file with emrged inputs and intervalss
    void MergeFiles(string, string, string);
};

void IntervalGenerator2::CreateReducedIntervalFile(char* filename1,
                                                  char* filename2) {
    CreateReducedIntervalFile(0x0llu, 0x80000llu, filename1, filename2);
}

void IntervalGenerator2::CreateReducedIntervalFile(unsigned long long xlow,
                                                  unsigned long long xhigh,
                                                  char* filename1,
                                                  char* filename2) {
    string fileNameString1 = filename1;
    string largeFileName1 = fileNameString1.append("_large");
    string fileNameString2 = filename2;
    string largeFileName2 = fileNameString2.append("_large");
    
    FILE* largeFile1 = fopen(largeFileName1.c_str(), "w");
    FILE* largeFile2 = fopen(largeFileName2.c_str(), "w");
    // Initially create a file with all the reduced inputs and intervals
    ComputeReducedIntervals(xlow, xhigh, largeFile1, largeFile2);
    fclose(largeFile1);
    fclose(largeFile2);
    
    // Sort the interval file and create a file named "filename"
    SortIntervalFile(largeFileName1, filename1);
    SortIntervalFile(largeFileName2, filename2);
    
    // Delete largeFileName file
    remove(largeFileName1.c_str());
    remove(largeFileName2.c_str());
}

void IntervalGenerator2::SortIntervalFile(string source, string dest) {
    std::map<double, IntData> intervals;
    std::map<double, IntData>::iterator it;
    std::queue<string> tempFiles;
    
    FILE* f = fopen(source.c_str(), "r");
    if (!f) {
        printf("Could not open file\n");
    }
    double data[3];
    
    // Read intervals into sorted map. Output intervals to temp files, 40M
    // intervals at a time.
    unsigned long long int counter = 0;
    printf("Reading files and splitting to 40million intervals at a time\n");
    while (fread(data, sizeof(double), 3, f) == 3) {
        if (data[1] <= -1.0e300 && data[2] >= 1.0e300) {
            
        } else {
            it = intervals.find(data[0]);
            if (it != intervals.end()) {
                if (data[1] > it->second.lb) it->second.lb = data[1];
                if (data[2] < it->second.ub) it->second.ub = data[2];
            } else {
                IntData temp;
                temp.lb = data[1];
                temp.ub = data[2];
                intervals[data[0]] = temp;
            }
        }
        
        counter++;
        if (counter % 1000000llu == 0llu) {
            printf("counter = %llu, interval.size() = %lu\r", counter, intervals.size());
            fflush(stdout);
        }
        
        // If there's 40M intervals, then save intervals to a temp file.
        if (intervals.size() == 40000000) {
            printf("Writing a new file\n");
            string newFileName = GetNewFileName(source);
            SaveIntervalsToAFile(intervals, newFileName);
            tempFiles.push(newFileName);
            intervals.clear();
            printf("Done writing a new file\n");
        }
    }
    
    fclose(f);
    
    // If there's anything else left, then save leftover to a temp file.
    if (intervals.size() > 0) {
        string newFileName = GetNewFileName(source);
        SaveIntervalsToAFile(intervals, newFileName);
        tempFiles.push(newFileName);
        intervals.clear();
    }
        
    // Once we created temp files, we read two files at a time from the queue,
    // and combine them. Delete the two old files. Add the new file to the queue.
    while (tempFiles.size() > 1) {
        string tempFile1 = tempFiles.front();
        tempFiles.pop();
        string tempFile2 = tempFiles.front();
        tempFiles.pop();
        string newFileName = GetNewFileName(source);
        MergeFiles(tempFile1, tempFile2, newFileName);
        remove(tempFile1.c_str());
        remove(tempFile2.c_str());
        
        tempFiles.push(newFileName);
        printf("Merged %s and %s to %s\n",
               tempFile1.c_str(),
               tempFile2.c_str(),
               newFileName.c_str());
    }
    
    // If there is only one file left in the queue, then we rename it to filename
    string tempFile1 = tempFiles.front();
    tempFiles.pop();
    rename(tempFile1.c_str(), dest.c_str());
}

void IntervalGenerator2::MergeFiles(string s1, string s2, string d) {
    FILE* f1 = fopen(s1.c_str(), "r");
    FILE* f2 = fopen(s2.c_str(), "r");
    FILE* fd = fopen(d.c_str(), "w");
    
    int f1Read = 0, f2Read = 0;
    double toAdd[3], f1data[3], f2data[3];
    bool f1More, f2More;
    
    // Initialize the data:
    f1More = ReadData(f1, f1data);
    f2More = ReadData(f2, f2data);
    
    if (f1data[0] < f2data[0]) CopyData(toAdd, f1data);
    else CopyData(toAdd, f2data);
    unsigned counter = 0;
    
    while(true) {
        counter++;
        if (counter >= 1000000) {
            printf("Working with lines %d, %d\r", f1Read, f2Read);
            counter = 0;
        }
        
        if (f1More && f1data[0] == toAdd[0]) {
            if (f1data[1] > toAdd[1]) toAdd[1] = f1data[1];
            if (f1data[2] < toAdd[2]) toAdd[2] = f1data[2];
            f1More = ReadData(f1, f1data);
            f1Read++;
            continue;
        }
        if (f2More && f2data[0] == toAdd[0]) {
            if (f2data[1] > toAdd[1]) toAdd[1] = f2data[1];
            if (f2data[2] < toAdd[2]) toAdd[2] = f2data[2];
            f2More = ReadData(f2, f2data);
            f2Read++;
            continue;
        }
        
        // At this point, both f1data[0] and f2data[0] > toAdd[0]. I need to
        // add toAdd[0] to fd file.
        fwrite(toAdd, sizeof(double), 3, fd);
        
        // Now we need to decide to add either f1data or f2data to toAdd:
        if (!f1More && !f2More) break;
        
        if (f1More && !f2More) {
            CopyData(toAdd, f1data);
            f1More = ReadData(f1, f1data);
            f1Read++;
        } else if (!f1More && f2More) {
            CopyData(toAdd, f2data);
            f2More = ReadData(f2, f2data);
            f2Read++;
        } else if (f1data[0] < f2data[0]) {
            CopyData(toAdd, f1data);
            f1More = ReadData(f1, f1data);
            f1Read++;
        } else {
            CopyData(toAdd, f2data);
            f2More = ReadData(f2, f2data);
            f2Read++;
        }
    }
    
    fclose(f1);
    fclose(f2);
    fclose(fd);
}

void IntervalGenerator2::ComputeReducedIntervals(unsigned long long xlow,
                                                unsigned long long xhigh,
                                                FILE* file1, FILE* file2) {
  if (xlow > xhigh) {
      xlow = 0x0;
      xhigh = 0x80000llu;
  }
  
  unsigned long long int inputX;
  for (inputX = xlow; inputX < xhigh; inputX++) {
    printf("inputX = %llu\r", inputX);
    fflush(stdout);
    floatX Xinput;
    Xinput.x = (inputX << 13);
    float input = Xinput.f;
    ComputeReducedInterval(input, file1, file2);
  }
}

void IntervalGenerator2::ComputeReducedInterval(float input,
                                                FILE* file1, FILE* file2) {
    // For each input, determine if it's special case or not. If it is, then
    // we continue to the next input
    float specialCaseResult;
    if (ComputeSpecialCase(input, specialCaseResult)) return;
    
    // Compute the correctly rounded result
    float corrResult = MpfrCalculateFunction(input);
    
    // Compute rounding interval
    double roundingLb, roundingUb;
    CalculateInterval(corrResult, roundingLb, roundingUb);
    
    // Compute reduced input
    double reducedInput = RangeReduction(input);
    
    // Get the initial guess for Lb and Ub
    double guessLbP1, guessUbP1, guessLbP2, guessUbP2;
    GuessInitialLbUb(reducedInput,
                     guessLbP1, guessUbP1,
                     guessLbP2, guessUbP2);
    
    // In a while loop, keep increasing lb and ub using binary search method to
    // find largest reduced interval
    double redIntLbP1, redIntUbP1, redIntLbP2, redIntUbP2, tempResult;
    bool lbIsSpecCaseP1 = false, ubIsSpecCaseP1 = false;
    bool lbIsSpecCaseP2 = false, ubIsSpecCaseP2 = false;

    // Determine if there are any special case reduced interval lb/ub
    SpecCaseRedInt(input,
                   guessLbP1, lbIsSpecCaseP1, redIntLbP1,
                   guessUbP1, ubIsSpecCaseP1, redIntUbP1,
                   guessLbP2, lbIsSpecCaseP2, redIntLbP2,
                   guessUbP2, ubIsSpecCaseP2, redIntUbP2);
    
    // Try to reduce LbP1 and LbP2 at the same time, if both LbP1 and LbP2
    // are not special cases. Take caution to check that LbP1 or LbP2 are
    // special cases. In those cases, we do not change them.
    
    if (!lbIsSpecCaseP1 || !lbIsSpecCaseP2) {
        // Check if we can lower the lower bound more
        tempResult = OutputCompensation(input, guessLbP1, guessLbP2);
        // If the initial guess puts us outside of rounding interval, there
        // is nothing more we can do
        if (tempResult < roundingLb || tempResult > roundingUb) {
            CalcRedIntErrorMsg1(input, roundingLb, roundingUb,
                                guessLbP1, guessUbP1,
                                guessLbP2, guessUbP2, tempResult);
        }
        
        // Otherwisse, we keep lowering lb's and see if we are still inside
        // the rounding interval
        unsigned long long step = 0x1000000000000;
        doubleX dx1, dx2;
        
        while (step > 0) {
            dx1.d = guessLbP1;
            if (!lbIsSpecCaseP1) {
                if (dx1.d >= 0) dx1.x -= step;
                else dx1.x += step;
            }
            
            dx2.d = guessLbP2;
            if (!lbIsSpecCaseP2) {
                if (dx2.d >= 0) dx2.x -= step;
                else dx2.x += step;
            }
            
            tempResult = OutputCompensation(input, dx1.d, dx2.d);
            if (tempResult >= roundingLb && tempResult <= roundingUb) {
                // It's safe to lower the lb
                guessLbP1 = dx1.d;
                guessLbP2 = dx2.d;
            } else {
                // Otherwise decrease the step by half
                step /= 2;
            }
        }
        
        // Finally, set redIntLbP1 and redIntLbP2
        redIntLbP1 = guessLbP1;
        redIntLbP2 = guessLbP2;
    }
    
    // Similarly for lb, we do the same thing for ub's
    if (!ubIsSpecCaseP1 || !ubIsSpecCaseP2) {
        // Check if we can increase the upper bound more
        tempResult = OutputCompensation(input, guessUbP1, guessUbP2);
        // If the initial guess puts us outside of rounding interval, there
        // is nothing more we can do
        if (tempResult < roundingLb || tempResult > roundingUb) {
            CalcRedIntErrorMsg1(input, roundingLb, roundingUb,
                                guessLbP1, guessUbP1,
                                guessLbP2, guessUbP2, tempResult);
        }
        
        // Otherwisse, we keep increasing ub's and see if we are still
        // inside the rounding interval
        unsigned long long step = 0x1000000000000;
        doubleX dx1, dx2;
        
        while (step > 0) {
            dx1.d = guessUbP1;
            if (!ubIsSpecCaseP1) {
                if (dx1.d >= 0) dx1.x += step;
                else dx1.x -= step;
            }
            
            dx2.d = guessUbP2;
            if (!ubIsSpecCaseP2) {
                if (dx2.d >= 0) dx2.x += step;
                else dx2.x -= step;
            }
            
            tempResult = OutputCompensation(input, dx1.d, dx2.d);
            if (tempResult >= roundingLb && tempResult <= roundingUb) {
                // It's safe to lower the lb
                guessUbP1 = dx1.d;
                guessUbP2 = dx2.d;
            } else {
                // Otherwise decrease the step by half
                step /= 2;
            }
        }
        
        // Finally, set redIntLbP1 and redIntLbP2
        redIntUbP1 = guessUbP1;
        redIntUbP2 = guessUbP2;
    }
    
    // Save reduced input, lb, and ub to files.
    fwrite(&reducedInput, sizeof(double), 1, file1);
    fwrite(&redIntLbP1, sizeof(double), 1, file1);
    fwrite(&redIntUbP1, sizeof(double), 1, file1);
    fwrite(&reducedInput, sizeof(double), 1, file2);
    fwrite(&redIntLbP2, sizeof(double), 1, file2);
    fwrite(&redIntUbP2, sizeof(double), 1, file2);
}

// Helper function implementation

void CalculateInterval(float x, double& lb, double& ub) {
  floatX xi;
  doubleX di;
  xi.f = x;
  double dx = x;
  // Take care of special cases:
  if (x == 0.0) {
    xi.x = 0x80002000;
    double lower = xi.f;
    lb = lower / 2;
    xi.x = 0x00002000;
    double upper = xi.f;
    ub = upper / 2;
    return;
  }

  if (x < 0.0) {
    if (xi.x == 0xFF7FE000) {
      double lower = -pow(2.0, 128.0);
      lb = (dx + lower) / 2;
    } else {
      xi.x += 0x2000;
      double lower = xi.f;
      lb = (dx + lower) / 2;
      xi.x -= 0x2000;
    }
    
    xi.x -= 0x2000;
    double upper = xi.f;
    ub = (dx + upper) / 2;
    
    // Inclusive or exclusive?
    xi.f = x;
    if ((xi.x & 0x2000) != 0) {
      di.d = lb;
      di.x --;
      lb = di.d;
      di.d = ub;
      di.x ++;
      ub = di.d;
    }
    return;
  }

  // Otherwise x > 0.0
  xi.x -= 0x2000;
  double lower = xi.f;
  lb = (dx + lower) / 2;
  xi.x += 0x2000;

  if (xi.x == 0x7F7FE000) {
    double upper = pow(2.0, 128.0);
    ub = (dx + upper) / 2;
  } else {
    xi.x += 0x2000;
    double upper = xi.f;
    ub = (dx + upper) / 2;
  }

  // inclusive or exclusive?
  xi.f = x;
  if ((xi.x & 0x2000) != 0) {
    di.d = lb;
    di.x ++;
    lb = di.d;
    di.d = ub;
    di.x --;
    ub = di.d;
  }
}

void CalcRedIntErrorMsg1(float input, double roundingLb, double roundingUb,
                         double guessLbP1, double guessUbP1,
                         double guessLbP2, double guessUbP2,
                         double tempResult) {
    printf("Initial guess for reduced interval results in a value outside of rounding interval\n");
    printf("Diagnostics:");
    printf("Input x = %.100e\n", input);
    printf("Rounding interval:\n");
    printf("lb      = %.100e\n", roundingLb);
    printf("ub      = %.100e\n", roundingUb);
    printf("Initial guess:\n");
    printf("lb (P1) = %.100e\n", guessLbP1);
    printf("ub (P1) = %.100e\n", guessUbP1);
    printf("lb (P2) = %.100e\n", guessLbP2);
    printf("ub (P2) = %.100e\n", guessUbP2);
    printf("output  = %.100e\n", tempResult);
    exit(0);
}

string GetNewFileName(string tfileName) {
    fileIndex++;
    return tfileName + "_temp" + std::to_string(fileIndex);
}

void SaveIntervalsToAFile(std::map<double, IntData> intervals,
                          string newFileName) {
    
    std::map<double, IntData>::iterator it;
    printf("Creating file %s\n", newFileName.c_str());
    FILE* tf = fopen(newFileName.c_str(), "w");
    for (it = intervals.begin(); it != intervals.end(); it++) {
        // If the interval is larger than [-1e300, 1e300], then this signifies
        // special case interval where the constraint is not "necessary."
        if (it->second.lb <= -1.0e300 && it->second.ub >= 1.0e300) continue;
        
        fwrite(&it->first, sizeof(double), 1, tf);
        fwrite(&it->second.lb, sizeof(double), 1, tf);
        fwrite(&it->second.ub, sizeof(double), 1, tf);
    }
    fclose(tf);
}

void CopyData(double dest[3], double source[3]) {
    for (int i = 0; i < 3; i++) dest[i] = source[i];
}

bool ReadData(FILE* f, double dest[3]) {
    size_t s = fread(dest, sizeof(double), 3, f);
    if (s == 0) return false;
    if (s == 3) return true;
    printf("ReadData needs to read 3 * double data. Seems like we couldn't.\n");
    exit(0);
}
