import 'dart:io';

void main() {
  List<String> inputtext = stdin.readLineSync()!.split(" ");
  for (String x in inputtext) {
    if ((x.length % 2) == 0 && x.length != 0) {
      stdout.write("$x ");
    }
  }
}
