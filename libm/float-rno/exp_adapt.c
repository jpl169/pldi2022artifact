#include <math.h>
#include "float-rno/float_rno_lib.h"
#include "exp2.h"

double rlibm_rno_exp_adapt(float x) {
  float_x fx;
  fx.f = x;
  
  // Take care of special cases
  if ((fx.x & 0x7FFFFFFF) == 0) return 1.0;

  if (fx.x <= 872415231) {
    if (fx.x <= 864026623) return 1.0000000298023223876953125;
    return 1.0000000894069671630859375;
  }

  if (1118925336 <= fx.x && fx.x <= 3011510272) {
    if (fx.x < 0x80000000) {
      if (fx.x < 0x7F800000) return 3.40282361850336062550457001444955389952e+38;
      if (fx.x == 0x7F800000) return 1.0 / 0.0;
      return 0.0/0.0;
    }
    
    // negative counterpart
    if (fx.x <= 3003121664) return 0.99999998509883880615234375;
    
    return 0.99999995529651641845703125;
  }

  if (fx.x >= 3268407733) {
    if (fx.x == 0xFF800000) return 0.0;
    if (fx.x < 0xFF800000) return ldexp(1.0, -151);
    return 0.0/0.0;
  }
  
  // Perform range reduction
  double xp = x * 92.332482616893656768297660164535045623779296875;
  int N = (int)xp;
  int N2 = N % 64;
  if (N2 < 0) N2 += 64;
  int N1 = N - N2;
  
  int M = N1 / 64;
  int J = N2;
  double R = x - N *
  0.01083042469624914509729318723429969395510852336883544921875;
  
  double_x dX;
  dX.d = R;
  double y;
  double k = R + 3.5241865898494528774875789167708717286586761474609375000000000000000000e-01;
  double z = k*k;

  switch (dX.x) {
    case 0xbf8325df0105c611:
      y = 9.9069396411390842072108853244571946561336517333984375000000000000000000e-01;
      break;
    case 0xbf787283e0000000:
      y = 9.9404916167259227410823996251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbf6f925ff5140000:
      y = 9.9615344038951469940457172924652695655822753906250000000000000000000000e-01;
      break;
    case 0xbf6c57f87ab4d800:
      y = 9.9654606220206354283419614148442633450031280517578125000000000000000000e-01;
      break;
    case 0xbf262097d5680000:
      y = 9.9983119621919913644347843728610314428806304931640625000000000000000000e-01;
      break;
    case 0xbed8000480000000:
      y = 9.9999427795410167352230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbed4000320000000:
      y = 9.9999523162841807977230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbed0000200000000:
      y = 9.9999618530273448602230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbec8000240000000:
      y = 9.9999713897705089227230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbec0000100000000:
      y = 9.9999809265136729852230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbeb8000120000000:
      y = 9.9999856948852550164730246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbeb0000080000000:
      y = 9.9999904632568370477230246251565404236316680908203125000000000000000000e-01;
      break;
    case 0xbea0000040000000:
      y = 9.9999952316284190789730246251565404236316680908203125000000000000000000e-01;
      break;
    case 0x3e8fffffc0000000:
      y = 1.0000001788139345482164799250313080847263336181640625000000000000000000e+00;
      break;
    case 0x3ebffffe00000000:
      y = 1.0000018477439882591539799250313080847263336181640625000000000000000000e+00;
      break;
    case 0x3ed3fffce0000000:
      y = 1.0000047087669374779039799250313080847263336181640625000000000000000000e+00;
      break;
    case 0x3f84e7c88c639e00:
      y = 1.0102599627447705898930507828481495380401611328125000000000000000000000e+00;
      break;
    default:
      // Compute polynomial
      y = z + 1.3451637476219900690921349450945854187011718750000000000000000000000000e+01;
      y *= z;
      y += 7.9535837034106762644114496652036905288696289062500000000000000000000000e+01;
      y *= (R + 3.3040583008812141052601418778067454695701599121093750000000000000000000e+00);
      y += -1.5523512227528101448115194216370582580566406250000000000000000000000000e+02;
      y *= 8.8396300281007068877503485282431938685476779937744140625000000000000000e-03;
  }

  // Perform output compensation
  y *= ldexp(exp2JBy64[J], M);
  return y;
}
