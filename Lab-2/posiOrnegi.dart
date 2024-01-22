import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync()!);

  if (n > 0) {
    stdout.write("Given Number is positive.");
  } else {
    stdout.write("Given Nuber is Negative.");
  }
}
