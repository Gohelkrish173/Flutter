import 'dart:io';

void main() {
  int? n;
  int pe = 0;
  int no = 0;

  while (n != 0) {
    n = int.parse(stdin.readLineSync()!);

    if (n == 0) {
      break;
    } else if (n > 0 && n % 2 == 0) {
      pe += n;
    } else if (n < 0 && n % 2 != 0) {
      no += n;
    }
  }

  stdout.write(
      "Sum Of Positive Even Numbers = $pe ,\nSum Of Negative Odd Numbers = $no  .");
}
