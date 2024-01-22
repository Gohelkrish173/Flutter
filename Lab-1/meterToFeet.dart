import "dart:io";

void main() {
  int m = int.parse(stdin.readLineSync()!);

  double F = (m * 3.28);

  stdout.write("$m meter to feet = $F feet.");
}
