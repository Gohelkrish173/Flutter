import "dart:io";

void main() {
  int s1 = int.parse(stdin.readLineSync()!);
  int s2 = int.parse(stdin.readLineSync()!);
  int s3 = int.parse(stdin.readLineSync()!);

  double P = ((s1 + s2 + s3) * 100) / 300;

  if (P < 35) {
    stdout.write("fail.");
  } else if (P >= 35 && P < 60) {
    stdout.write("pass.");
  } else if (P >= 60 && P < 70) {
    stdout.write("first class.");
  } else if (P >= 70 && P < 80) {
    stdout.write("second class.");
  } else if (P >= 80) {
    stdout.write("Distinct.");
  }
}
