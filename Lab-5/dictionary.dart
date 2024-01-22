import "dart:io";

void main() {
  List<Map<String, dynamic>> A = [];

  int i;
  for (i = 0; i < 3; i++) {
    Map<String, dynamic> B = {};

    stdout.write("Name : ");
    B["Name"] = stdin.readLineSync();
    stdout.write("\nMobile : ");
    B["Mobile"] = int.parse(stdin.readLineSync()!);
    A.add(B);
  }
  ;

  stdout.write(A);
}
