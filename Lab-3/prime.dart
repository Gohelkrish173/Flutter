import 'dart:io';
import 'dart:math';

void main() {
  var n1 = int.parse(stdin.readLineSync()!);

  for (var i = 2; i < sqrt(n1); i++) {
    if (n1 % i == 0) {
      stdout.write("Given Number Is Prime.");
    } else {
      stdout.write("Given Number Is Non-Prime.");
    }
  }
}
