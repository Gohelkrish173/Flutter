import "dart:io";
import "Time.dart";

void main() {
  stdout.write("Enter Hour Of Time 1 =");
  int? h1 = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter Hour Of Time 2 =");
  int? h2 = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter Minute Of Time 1 =");
  int? m1 = int.parse(stdin.readLineSync()!);

  stdout.write("\nEnter Minute Of Time 2 =");
  int? m2 = int.parse(stdin.readLineSync()!);

  Time T = Time();

  T.addition(h1, h2, m1, m2);
}
