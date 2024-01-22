import "dart:io";

void main() {
  var n = int.parse(stdin.readLineSync()!);
  int ans;

  for (int i = n - 1; i > 0; i--) {
    n *= i;
  }

  ans = n;

  if (n == 0) {
    stdout.write("Ans is 1");
  } else {
    stdout.write("Ans = $ans");
  }
}
