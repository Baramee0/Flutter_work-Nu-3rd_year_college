import 'dart:io';

void main() {
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= size; i++) {
    for (int j = 1; j <= size; j++) {
      if ((i == 1 || i == size) && (j == 1 || j == size)) {
        stdout.write("+");
      } else if (i == 1 || i == size) {
        stdout.write("-");
      } else if (j == 1 || j == size) {
        stdout.write("|");
      } else {
        stdout.write(" ");
      }
    }
    print("");
  }
}
