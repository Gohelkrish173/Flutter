import "dart:io";

void main() {
  int a = 10;
  int b = 20;

  stdout.write(a + b);

  var x = stdin.readLineSync();
  stdout.write(x);
}
