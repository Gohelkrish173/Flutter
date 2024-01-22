import "dart:io";

void main() {
  var n = int.parse(stdin.readLineSync()!);

  double Ans = ((n * (n + 1)) / 2);

  stdout.write("$Ans");
}
