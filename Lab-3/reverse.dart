import "dart:io";

void main() {
  String str = stdin.readLineSync()!;

  int? n = str.length;
  int i;
  String rstr = '';

  for (i = n - 1; i >= 0; i--) {
    rstr += str[i];
  }

  stdout.write("$rstr");
}
