import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int x = 0;

  while (n > 0) {
    x = x * 10 + n % 10;
    n = (n / 10).floor();
  }

  stdout.write("Reversed Number is $x");
}
