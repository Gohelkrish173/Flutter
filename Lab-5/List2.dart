import "dart:io";

void main() {
  List A = [];
  List B = [];
  List C = [];

  int i;

  for (i = 0; i < 5; i++) {
    stdout.write("A:");
    A.add(int.parse(stdin.readLineSync()!));
    stdout.write("\nB:");
    B.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (A[i] == B[j]) {
        C.add(A[i]);
      }
    }
  }

  stdout.write(C);
}
