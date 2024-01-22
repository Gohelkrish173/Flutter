import "dart:io";

void main() {
  List A = [];
  int temp, i;

  for (i = 0; i < 5; i++) {
    A.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < 5; i++) {
    for (int j = i + 1; j < 5; j++) {
      if (A[i] > A[j]) {
        temp = A[i];
        A[i] = A[j];
        A[j] = temp;
      }
    }
  }

  stdout.write(A);
}
