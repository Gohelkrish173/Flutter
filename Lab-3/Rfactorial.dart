import "dart:io";

int fact(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * fact(n - 1);
  }
}

void main() {
  var n = int.parse(stdin.readLineSync()!);

  int ans = fact(n);

  stdout.write("Ans = $ans");
}
