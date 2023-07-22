import 'students.dart' as addStudent;
import 'course.dart';
import 'attendance.dart';
import 'teachers.dart';
import 'accountant.dart';
import 'receptionist.dart';
import 'dart:io';




void main(){

var userName = stdin.readLineSync();
  var password = stdin.readLineSync();
  bool isLogin = false;
  while (isLogin == false) {
    if (userName == "hira@gmail.com" && password == "123456") {
      print("Login successful");
      isLogin = true;
    } else {
      print("Loggin Failed");

      userName = stdin.readLineSync();
      password = stdin.readLineSync();
    }
  }




}



