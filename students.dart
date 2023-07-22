import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    print("\nMenu:");
    print("1. Add Student");
    print("2. Delete Student");
    print("3. Display Students");
    print("4. Exit");
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
      case 1:
        addStudent(students);
        break;
      case 2:
        deleteStudent(students);
        break;
      case 3:
        displayStudents(students);
        break;
      case 4:
        print("Exiting program.");
        return;
      default:
        print("Invalid choice. Please enter a valid option.");
        break;
    }
  }
}

void addStudent(List<Map<String, dynamic>> students) {

    print("\nEnter student's ID: ");
    int? id = int.tryParse(stdin.readLineSync()!);

    print("Enter student's name: ");
    String? name = stdin.readLineSync();

    print("Enter student's contact: ");
    String? contact = stdin.readLineSync();

    print("Enter student's class: ");
    String? className = stdin.readLineSync();

    if (id == null || name == null || contact == null || className == null) {
      print("Invalid input. Student not added.");
      return;
    }

    Map<String, dynamic> newStudent = {
      "id": id,
      "name": name,
      "contact": contact,
      "class": className,
    };
    students.add(newStudent);
    print("Student '$name' added successfully.");
  }

void deleteStudent(List<Map<String, dynamic>> students) {
  // print("\nEnter student's name to delete: ");
  // String? name = stdin.readLineSync();

  // if (name == null || name.isEmpty) {
  //   print("Invalid name. Please try again.");
  //   return;
  // }

  // int indexToRemove = -1;
  // for (int i = 0; i < students.length; i++) {
  //   if (students[i]["name"] == name) {
  //     indexToRemove = i;
  //     break;
  //   }
  // }

  // if (indexToRemove != -1) {
  //   String deletedStudentName = students[indexToRemove]["name"];
  //   students.removeAt(indexToRemove);
  //   print("Student '$deletedStudentName' deleted successfully.");
  // } else {
  //   print("Student '$name' not found.");
  // }

    print("\nEnter student's ID to delete: ");
    int? id = int.tryParse(stdin.readLineSync()!);

    if (id == null) {
      print("Invalid ID. Please try again.");
      return;
    }

    int indexToRemove = -1;
    for (int i = 0; i < students.length; i++) {
      if (students[i]['id'] == id) {
        indexToRemove = i;
        break;
      }
    }

    if (indexToRemove != -1) {
      String deletedStudentName = students[indexToRemove]['name'];
      students.removeAt(indexToRemove);
      print("Student '$deletedStudentName' (ID: $id) deleted successfully.");
    } else {
      print("Student with ID: $id not found.");
    }
  }

 void displayStudents(List<Map<String, dynamic>> students) {
  if (students.isEmpty) {
    print("No students to display.");
  } else {
    print("List of students:");
    for (var student in students) {
      print("ID: ${student["id"]}, Name: ${student["name"]}, Contact: ${student["contact"]}, Class: ${student["class"]}");
    }
  }
}
