import 'students.dart' as Student;
import 'course.dart' as Course;
import 'attendance.dart' as Attendance;
import 'teachers.dart' as Teacher;
import 'accountant.dart' as Accountant;
import 'receptionist.dart' as Receptionist;
import 'dart:io';

void main() {

// String userEmail='';
// String password='';

  while (true) {
    // print('Enter User Name');
    // var userName = stdin.readLineSync();
    // print('Enter Password');
    // var password = stdin.readLineSync();
    // bool isLogin = false;
    // while (isLogin == false) {
    //   if (userName == "hira@gmail.com" && password == "123456") {
    //     print("Login successful");
    //     isLogin = true;

    
  List<Map<String, String>> credentials = [
    {'email': 'hira@gmail.com', 'password': 'pass1'},
    {'email': 'kubra@gmail.com', 'password': 'pass2'},
    {'email': 'zubia@gmail.com', 'password': 'pass3'}
  ];

  bool isLoggedIn = false;

  while (!isLoggedIn) {
    
      stdout.writeln('Enter Your Email: ');
       String email = stdin.readLineSync()!;
  
    
 
    stdout.writeln('Enter Your Password');
    String password = stdin.readLineSync()!;

    for (var credential in credentials) {
      if (credential['email'] == email && credential['password'] == password) {
        isLoggedIn = true;
        break;
      }
    }



    if (isLoggedIn) {
      print('User login successful.');
    
        print("\nMenu:");
        print("11. Manage Students");
        print("12. Manage Courses");
        print("13. Manage Teachers");
        print("14.  Manage Receptionist");
        print("15.  Manage Attendance");
        print("16.  Manage Accountant");
        print("17. Quit");
        print("Enter your choice: ");


        String? input = stdin.readLineSync();
        if (input == null) {
          print("Invalid input. Please try again.");
          continue;
        }

        int? choice = int.tryParse(input);
        if (choice == null) {
          print("Invalid choice. Please enter a valid number.");
          continue;
        }

        switch (choice) {
          case 11:
            Student.main();
            break;
          case 12:
            Course.main();
            break;
          case 13:
            Teacher.main();
            break;
          case 14:
            Receptionist.main();
            break;
          case 15:
            Attendance.main();
          case 16:
            Accountant.main();
            break;
          case 17:
            print("Exiting program.");
            return;
          default:
            print("Invalid choice. Please enter a valid option.");
            break;
        }
  }
  
        else {
      print('Invalid email or password. Please try again.');
        stdout.writeln('Enter User Email');
        email = stdin.readLineSync()!;
        stdout.writeln('Enter Password');
        password = stdin.readLineSync()!;
    }
  }
      // } else {
      //   print("Loggin Failed");
      //   print('Enter User Name');
      //   userName = stdin.readLineSync();
      //   print('Enter Password');
      //   password = stdin.readLineSync();
      // }
    // }
  }
}
