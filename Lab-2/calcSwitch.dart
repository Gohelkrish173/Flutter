import "dart:io";

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  String choice = stdin.readLineSync()!;

  switch (choice) {
    case "+":
      stdout.write("${a + b} \n");
      break;
    case "-":
      stdout.write("${a - b} \n");
      break;
    case "*":
      stdout.write("${a * b}");
      break;
    case "/":
      stdout.write("${a / b}");
  }
}
