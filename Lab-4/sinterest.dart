import "dart:io";

class sinterest {
  double? ans;
  double interest(int p, double r, int n) {
    return (p * r * n / 100);
  }
}

void main() {
  int p = int.parse(stdin.readLineSync()!);
  double r = double.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);

  sinterest sint = sinterest();

  double ans = sint.interest(p, r, n);

  stdout.write("Simple Interest = $ans");
}
