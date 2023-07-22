import 'dart:io';

void main() {

  Map<String, String> teachers = {};

  while (true) {
    print("\nMenu:");
   
    print("1. Add Teacher");
    print("2. Delete Teacher");
    print("3. Display Teachers");
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
        addTeacher(teachers);
        break;
      case 2:
        deleteTeacher(teachers);
        break;
      case 3:
        displayTeachers(teachers);
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



void addTeacher(Map<String, String> teachers) {
  print("Enter teacher's name: ");
  String? name = stdin.readLineSync();
  if (name == null || name.isEmpty) {
    print("Invalid name. Please try again.");
    return;
  }

  print("Enter teacher's subject: ");
  String? subject = stdin.readLineSync();
  if (subject == null || subject.isEmpty) {
    print("Invalid subject. Please try again.");
    return;
  }

  teachers[name] = subject;
  print("Teacher '$name' is going to teach '$subject' added successfully.");
}

void deleteTeacher(Map<String, String> teachers) {
  print("Enter teacher's name to delete: ");
  String? name = stdin.readLineSync();
  if (name == null) {
    print("Invalid name. Please try again.");
    return;
  }

  if (teachers.containsKey(name)) {
    teachers.remove(name);
    print("Teacher '$name' deleted successfully.");
  } else {
    print("Teacher '$name' not found.");
  }
}

void displayTeachers(Map<String, String> teachers) {
  if (teachers.isEmpty) {
    print("No teachers to display.");
  } else {
    print("List of teachers:");
    teachers.forEach((name, subject) {
      print("$name - Subject: $subject");
    });
  }
}
