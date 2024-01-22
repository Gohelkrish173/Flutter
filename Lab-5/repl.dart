import "dart:io";

void main() {
  var A = ["Delhi", "Mumbai", "Bangalore", "Hydrabad", "Ahmedabad"];
  stdout.write("Before Replace $A \n");
  int i;

  for (i = 0; i < A.length; i++) {
    if (A[i] == "Ahmedabad") {
      A[i] = "Surat";
    }
  }

  stdout.write("After Replce $A");
}
