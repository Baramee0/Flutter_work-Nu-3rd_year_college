import 'dart:io';
import 'dart:math';
void main() {
  var input1 = int.parse(stdin.readLineSync()!);
  var input2 = int.parse(stdin.readLineSync()!);
  var input3 = int.parse(stdin.readLineSync()!);
  print([input1,input2,input3].reduce(max));
}