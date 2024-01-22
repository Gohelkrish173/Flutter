import "dart:io";

void main() {
  double w = double.parse(stdin.readLineSync()!);
  double h = double.parse(stdin.readLineSync()!);

  w = w * .453;
  h = h * .254;

  double BMI = (w / (h * h));

  stdout.write("BMI = $BMI kg/m^2 . ");
}
