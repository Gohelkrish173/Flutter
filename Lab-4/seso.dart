import "dart:io";

void main() {
  List<int>? A = [];
  int n = int.parse(stdin.readLineSync()!);
  int se = 0;
  int so = 0;

  for (int i = 0; i < n; i++) {
    A.add(int.parse(stdin.readLineSync()!));

    if (A[i] % 2 == 0) {
      se += A[i];
    } else {
      so += A[i];
    }
  }

  stdout.write("Sum of Odd = $so ,\nSum of Even = $se");
}
