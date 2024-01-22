import "dart:io";

int power(int x, int y) {
  if (y == 0) {
    return 1;
  } else {
    return x * power(x, y - 1);
  }
}

void main() {
  var b = int.parse(stdin.readLineSync()!);
  var p = int.parse(stdin.readLineSync()!);

  int Ans = power(b, p);

  stdout.write("$b ^ $p = $Ans");
}
