import "dart:io";

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  String choice = stdin.readLineSync()!;

  int ans = 0;

  if (choice == "1") {
    ans = (a + b);
    stdout.write("$ans \n");
  } else if (choice == "2") {
    ans = (a - b);
    stdout.write("$ans \n");
  } else if (choice == "3") {
    ans = (a * b);
    stdout.write("$ans \n");
  } else if (choice == "4") {
    double Ans = (a / b);
    stdout.write("$Ans .");
  }
}
