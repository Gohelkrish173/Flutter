import "dart:io";

void main() {
  int a1 = int.parse(stdin.readLineSync()!);
  int a2 = int.parse(stdin.readLineSync()!);
  int a3 = int.parse(stdin.readLineSync()!);

  int? L;

  if (a1 > a2) {
    if (a1 > a3) {
      L = a1;
    } else {
      L = a3;
    }
  } else if (a2 > a1) {
    if (a2 > a3) {
      L = a2;
    } else {
      L = a3;
    }
  } else if (a3 > a2) {
    if (a3 > a1) {
      L = a3;
    } else {
      L = a1;
    }
  }

  stdout.write("Largest = $L");
}
