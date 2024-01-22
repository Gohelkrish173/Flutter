import "dart:io";

class fibonacci {
  int n1 = 0;
  int n2 = 1;
  int? n3;

  void fibo(int n) {
    stdout.write("$n1 , $n2 ,");
    for (int i = 2; i < n; i++) {
      n3 = n1 + n2;
      stdout.write("$n3 ,");
      n1 = n2;
      n2 = n3!;
    }
  }
}

void main() {
  stdout.write("Enter fibonacci series length = ");
  int n = int.parse(stdin.readLineSync()!);

  fibonacci f = fibonacci();
  f.fibo(n);
}
