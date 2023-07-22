import 'dart:io';

void main() {
  Map<String, String> receptionists = {};
  while (true) {
    print("\nMenu:");
    print("1. Add receptionists");
    print("2. Delete receptionists");
    print("3. Display receptionists");
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
         addReceptionist(receptionists);
        break;
      case 2:
        deleteReceptionist(receptionists);
        break;
      case 3:
        displayReceptionists(receptionists);
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

void addReceptionist(Map<String, String> receptionists) {
  print("Enter receptionist's name: ");
  String? name = stdin.readLineSync();
  if (name == null || name.isEmpty) {
    print("Invalid name. Please try again.");
    return;
  }

  print("Enter receptionist's contact number: ");
  String? contactNumber = stdin.readLineSync();
  if (contactNumber == null || contactNumber.isEmpty) {
    print("Invalid contact number. Please try again.");
    return;
  }

  receptionists[name] = contactNumber;
  print(
      "Receptionist '$name' with contact number $contactNumber added successfully.");
}

void deleteReceptionist(Map<String, String> receptionists) {
  print("Enter receptionist's name to delete: ");
  String? name = stdin.readLineSync();
  if (name == null) {
    print("Invalid name. Please try again.");
    return;
  }

  if (receptionists.containsKey(name)) {
    receptionists.remove(name);
    print("Receptionist '$name' deleted successfully.");
  } else {
    print("Receptionist '$name' not found.");
  }
}

void displayReceptionists(Map<String, String> receptionists) {
  if (receptionists.isEmpty) {
    print("No receptionists to display.");
  } else {
    print("List of receptionists:");
    receptionists.forEach((name, contactNumber) {
      print("$name - Contact: $contactNumber");
    });
  }
}
