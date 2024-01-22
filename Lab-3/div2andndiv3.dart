import "dart:io";

void main() {
  int? s = int.parse(stdin.readLineSync()!);
  int? e = int.parse(stdin.readLineSync()!);
  int i = s + 1;

  stdout.write("Number : ");
  for (i = s + 1; (i > s && i < e); i++) {
    if (i % 2 == 0 && i % 3 != 0) {
      stdout.write("$i ,");
    }
  }
}
