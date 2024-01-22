import "dart:io";

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<dynamic> L = [];

  for (int i = 0; i < n; i++) {
    Map<String, dynamic> D = {};

    D["Name"] = stdin.readLineSync()!;
    D["Number"] = int.parse(stdin.readLineSync()!);
    D["Age"] = int.parse(stdin.readLineSync()!);

    Map<String, Object?> M = {};

    M[D["Name"].toString().toLowerCase()] = D;

    L.add(M);
  }

  String x = stdin.readLineSync()!;
  stdout.write("${L[0].x}");

  // for (int i = 0; i < n; i++) {
  //   if (L[i][x.toString().toLowerCase()]) {
  //     stdout.write("${L[i]}");
  //     break;
  //   } else {
  //     stdout.write("input is not matched");
  //     break;
  //   }
  // }
}
