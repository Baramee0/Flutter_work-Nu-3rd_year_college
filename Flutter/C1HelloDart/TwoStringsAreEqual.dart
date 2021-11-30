import 'dart:io';
void main() {
  var inputText1 = stdin.readLineSync();
  var inputText2 = stdin.readLineSync();
  if(inputText1 == inputText2) {
    print("exact match");
  }else {
    print("not the same");
  }
}
