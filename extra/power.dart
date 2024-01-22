import "dart:io";

void main() {
  var b = int.parse(stdin.readLineSync()!);
  var p = int.parse(stdin.readLineSync()!);

  int ans = 1;

  for (int i = p; i > 0; i--) {
    ans *= b;
  }

  stdout.write("$b ^ $p = $ans");
}
