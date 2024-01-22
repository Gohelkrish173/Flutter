import "dart:io";

void main() {
  var str = stdin.readLineSync();

  stdout.write("str : $str \n");

  var str2 = str?.split('').reversed.join();

  stdout.write("str2 : $str2 \n");

  if (str == str2) {
    stdout.write("Given String is Palindrome. \n");
  } else {
    stdout.write("Given String is Not Palindrom. \n");
  }
}
