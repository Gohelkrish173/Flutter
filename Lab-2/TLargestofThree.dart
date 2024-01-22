import "dart:io";

void main() {
  int a1 = int.parse(stdin.readLineSync()!);
  int a2 = int.parse(stdin.readLineSync()!);
  int a3 = int.parse(stdin.readLineSync()!);

  a1 > a2 && a1 > a3
      ? stdout.write("Largest = $a1")
      : (a2 > a3
          ? stdout.write("Largets = $a2")
          : stdout.write("Largest = $a3"));
}
