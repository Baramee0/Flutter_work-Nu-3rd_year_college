import 'dart:io';

void main() {
  int inputnumber1 = int.parse(stdin.readLineSync()!);
  int inputnumber2 = int.parse(stdin.readLineSync()!);

  int i;
  for(i=1; i <= 20 ; i++){

    if(i % inputnumber1 == 0 && i % inputnumber2 == 0){
      print("FizzBuzz");

    }else if(i%inputnumber2 == 0){
      print("Buzz");

    }else if(i%inputnumber1 == 0){
      print("Fizz");

    }else {
      print(i);
    }
  }
}