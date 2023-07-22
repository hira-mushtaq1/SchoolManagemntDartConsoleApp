
import 'dart:io';

void main() {
  List<String> students = [
    "Student 1",
    "Student 2",
    "Student 3",
    "Student 4"
    
  ];

  

  List<bool> attendanceList = [];

  print("Welcome to the Attendance System");
  print(
      "Enter 'p' to mark a student present, 'a' to mark absent, or 'q' to quit.");

  for (var i = 0; i < students.length; i++) {
    print("${i + 1}. ${students[i]}: ");
    var input = stdin.readLineSync();

    if (input == 'p') {
      attendanceList.add(true);
    } else {
      attendanceList.add(false);
    }
  }

  print("\nAttendance Summary:");
  for (var i = 0; i < students.length; i++) {
    var status = attendanceList[i] ? "Present" : "Absent";
    print("${students[i]}: $status");
  }
}
