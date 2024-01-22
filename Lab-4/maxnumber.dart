import "dart:io";

class max {
  int? MNumber(int n1, int n2) {
    if (n1 > n2) {
      return n1;
    } else {
      return n2;
    }
  }
}

void main() {
  stdout.write("Enter N1 : ");
  int? n1 = int.parse(stdin.readLineSync()!);
  stdout.write("\nEnter N2 : ");
  int? n2 = int.parse(stdin.readLineSync()!);
  max m = new max();

  int ans = m.MNumber(n1, n2)!;

  stdout.write("Max Number : $ans");
}
