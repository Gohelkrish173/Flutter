import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> A = [];
  int sum = 0;
  for (int i = 0; i < n; i++) {
    A.add(int.parse(stdin.readLineSync()!));

    if (A[i] % 3 == 0 || A[i] % 5 == 0) {
      sum += A[i];
    }
  }

  stdout.write("Sum Of Number which is divisable by 3 or 5 = $sum");
}
