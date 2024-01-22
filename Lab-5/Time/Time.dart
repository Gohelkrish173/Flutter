import "dart:io";

class Time {
  int SH = 0;
  int SM = 0;

  addition(int h1, int h2, int m1, int m2) {
    SH = h1 + h2;
    SM = m1 + m2;

    if (SM >= 60) {
      SM = SM - 60;
      SH = SH + 1;
    }
    stdout.write("Final Time HH : MM = $SH : $SM");
  }
}
