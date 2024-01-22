import 'dart:io';

void main() {
  var n = int.parse(stdin.readLineSync()!);
  var sum = int.parse('0');

  for (var i = 1; i < n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }

  if (sum == n) {
    stdout.write("Given Number Is Perfect Number.");
  } else {
    stdout.write("Given Nubmer Is Not Perfect Number.");
  }
}
