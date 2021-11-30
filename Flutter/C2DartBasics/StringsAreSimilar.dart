import 'dart:io';
void main() {
  String inputText1 = stdin.readLineSync()!;
  String inputText2 = stdin.readLineSync()!;

  if(inputText1 == inputText2) {
    print("exact match");
  }else if(inputText1.toLowerCase() == inputText2.toLowerCase()) {
    print("similar");
  }else {
    print("not the same");
  }

}