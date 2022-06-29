import'dart:io';
void main() {
  print("What's your age?");
  int? age = stdin.readLineSync() as int;
  print("your age is $age");
}
