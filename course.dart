import 'dart:io';

void main() {

  Map<String, String> courses = {};

while (true) {
    print("\nMenu:");
    print("1. Add courses");
    print("2. Delete courses");
    print("3. Display courses");
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
         addCourse(courses);
        break;
      case 2:
        deleteCourse(courses);
        break;
      case 3:
        displayCourses(courses);
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










void addCourse(Map<String, String> courses) {
  print("Enter course name: ");
  String? courseName = stdin.readLineSync();
  if (courseName == null || courseName.isEmpty) {
    print("Invalid course name. Please try again.");
    return;
  }

  print("Enter course code: ");
  String? courseCode = stdin.readLineSync();
  if (courseCode == null || courseCode.isEmpty) {
    print("Invalid course code. Please try again.");
    return;
  }

  courses[courseName] = courseCode;
  print("Course '$courseName' with code $courseCode added successfully.");
}

void deleteCourse(Map<String, String> courses) {
  print("Enter course name to delete: ");
  String? courseName = stdin.readLineSync();
 
  if (courseName == null) {
    print("Invalid course name. Please try again.");
    return;
  }

  if (courses.containsKey(courseName)) {
    courses.remove(courseName);
    print("Course '$courseName' deleted successfully.");
  } else {
    print("Course '$courseName' not found.");
  }

  //  String? courseCode = stdin.readLineSync();
  // if (courses.containsKey(courseCode)) {
  //   courses.remove(courseName);
  //   print("Course '$courseName' deleted successfully.");
  // } else {
  //   print("Course '$courseName' not found.");
  // }
}

void displayCourses(Map<String, String> courses) {
  if (courses.isEmpty) {
    print("No courses to display.");
  } else {
    print("List of courses:");
    courses.forEach((courseName, courseCode) {
      print("$courseName - Code: $courseCode");
    });
  }
}
