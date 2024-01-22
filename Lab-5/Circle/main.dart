import "dart:io";
import "Circle.dart";

void main() {
  stdout.write("radius = ");
  double r = double.parse(stdin.readLineSync()!);

  Circle C = Circle();

  stdout.write("Area Of Circle = ${C.area(r)} \n");
  stdout.write("Perimeter Of Circle = ${C.perimeter(r)}");
}
