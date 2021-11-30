import 'dart:io';
void main(){
  String? original =  stdin.readLineSync();
  String? reverse = original!.split('').reversed.join('');

  if(original == reverse)
  {
    print('true');
  }else{
    print('false');
  }
}