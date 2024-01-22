import "dart:io";

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_weight;
  double? Candidate_height;

  Candidate() {
    Candidate_ID = 0;
    Candidate_Name = "";
    Candidate_Age = 0;
    Candidate_weight = 0.0; //in KG
    Candidate_height = 0.0; //in foot
  }

  void GetCandidateDetails() {
    Candidate_ID = int.parse(stdin.readLineSync()!);
    Candidate_Name = stdin.readLineSync()!;
    Candidate_Age = int.parse(stdin.readLineSync()!);
    Candidate_weight = double.parse(stdin.readLineSync()!);
    Candidate_height = double.parse(stdin.readLineSync()!);
  }

  void DisplayCandidateDetails() {
    stdout.write(
        "\nCandidate Id = $Candidate_ID,\nCandidate Name = $Candidate_Name,\nCandidate Age = $Candidate_Age Years,\nCandidate Weight = $Candidate_weight Kg,\nCandidate Height = $Candidate_height feet.");
  }
}
