import "dart:io";

void main() {
  stdout.write(
      "${DateTime.now()} \n ${DateTime.utc(2023, 12, 30)} \n ${DateTime.timestamp()}");
}
