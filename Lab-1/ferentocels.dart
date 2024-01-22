import "dart:io";

void main() {
  double f = double.parse(stdin.readLineSync()!);

  double C = (5 / 9) * (f - 32);

  stdout.write("Celsius = $C \n");

  double c = double.parse(stdin.readLineSync()!);

  double F = (c * 9 / 5) + 32;

  stdout.write("Ferenhit = $F");
}
