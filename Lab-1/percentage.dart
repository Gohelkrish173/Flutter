import "dart:io";

void main() {
  int sub1 = int.parse(stdin.readLineSync()!);
  int sub2 = int.parse(stdin.readLineSync()!);
  int sub3 = int.parse(stdin.readLineSync()!);

  double percentage = (sub1 + sub2 + sub3) * 100 / 300;

  stdout
      .write("Total Marks = ${sub1 + sub2 + sub3} \nPercentage = $percentage");
}
