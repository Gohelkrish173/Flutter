import "dart:io";

class Bank_Account {
  int? Account_No;
  String? User_Name;
  String? Email;
  String? Account_Type;
  double? Account_Balance;

  GetAccountDetails() {
    Account_No = int.parse(stdin.readLineSync()!);
    User_Name = stdin.readLineSync()!;
    Email = stdin.readLineSync()!;
    Account_Type = stdin.readLineSync()!;
    Account_Balance = double.parse(stdin.readLineSync()!);
  }

  DisplayAccountDetail() {
    stdout.write(
        "\nAccount No = $Account_No,\nUser Name = $User_Name,\nEmail = $Email,\nAccount Type = $Account_Type,\nAccount Balance = $Account_Balance Rs.");
  }
}
