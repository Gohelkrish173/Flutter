import "dart:io";

class calculate {
  double? cal(int c, {int r = 0, double l = 0, int h = 0, int b = 0}) {
    if (c == 1) {
      return (3.14 * r * r);
    } else if (c == 2) {
      return (.5 * h * b);
    } else if (c == 3) {
      return (l * l);
    }
  }
}

void main() {
  int c = int.parse(stdin.readLineSync()!);

  calculate C = calculate();

  if (c == 1) {
    int R = int.parse(stdin.readLineSync()!);
    double area = C.cal(c, r: R)!;
    stdout.write("area = $area \n");
  } else if (c == 2) {
    stdout.write("H = ");
    int H = int.parse(stdin.readLineSync()!);
    stdout.write("\nB = ");
    int B = int.parse(stdin.readLineSync()!);
    double area = C.cal(c, h: H, b: B)!;
    stdout.write("area = $area \n");
  } else if (c == 3) {
    stdout.write("\nL = ");
    double L = double.parse(stdin.readLineSync()!);
    double area = C.cal(c, l: L)!;
    stdout.write("area = $area");
  }
}
