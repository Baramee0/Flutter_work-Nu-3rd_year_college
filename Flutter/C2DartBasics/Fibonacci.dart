import 'dart:io';
import 'dart:math';

int fibonacci(int n) => n <= 2 ? 1 : fibonacci(n - 2) + fibonacci (n - 1);

void main() {
  var input1 = int.parse(stdin.readLineSync()!);
  String output = "";
  for (int i = 1; i <= input1; ++i) {
    output += fibonacci(i).toString() + " ";
  }
  print(output);
}