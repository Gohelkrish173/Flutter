import "dart:io";

void main() {
  List<int> L = [];

  int sum = 0;

  for (int i = 0; i < 5; i++) {
    L.add(int.parse(stdin.readLineSync()!));
  }

  for (int j = 0; j < 5; j++) {
    if (L[j] % 3 == 0 || L[j] % 5 == 0) {
      sum = sum + L[j];
    }
  }

  stdout.write("sum = $sum");
}
