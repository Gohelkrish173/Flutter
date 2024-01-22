import "dart:io";

class prime {
  int? P(int n) {
    for (int i = 2; i < n / 2; i++) {
      if (n % i == 0) {
        return 0;
      } else {
        return 1;
      }
    }
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  prime p = prime();
  int ans = p.P(n)!;

  if (ans == 1) {
    stdout.write("Given Number is Prime");
  } else {
    stdout.write("Given Number is Not prime");
  }
}
