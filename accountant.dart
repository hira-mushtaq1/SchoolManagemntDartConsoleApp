


import 'dart:io';

void main() {

  List<Map<String, dynamic>> accountants = [];

  while (true) {
    print("\nMenu:");

    print("1. Add Accountant");
    print("2. Delete Accountant");
    print("3. Display Accountants");
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
        addAccountant(accountants);
        break;
      case 2:
        deleteAccountant(accountants);
        break;
      case 3:
        displayAccountants(accountants);
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






void addAccountant(List<Map<String, dynamic>> accountants) {
  print("\nEnter accountant's name: ");
  String? name = stdin.readLineSync();

  print("Enter accountant's contact: ");
  String? contact = stdin.readLineSync();

  if (name == null || name.isEmpty || contact == null || contact.isEmpty) {
    print("Invalid input. Accountant not added.");
    return;
  }

  Map<String, dynamic> newAccountant = {
    "name": name,
    "contact": contact,
  };
  accountants.add(newAccountant);
  print("Accountant '$name' added successfully.");
}

void deleteAccountant(List<Map<String, dynamic>> accountants) {
  print("\nEnter accountant's name to delete: ");
  String? name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    print("Invalid name. Please try again.");
    return;
  }

  int indexToRemove = -1;
  for (int i = 0; i < accountants.length; i++) {
    if (accountants[i]["name"] == name) {
      indexToRemove = i;
      break;
    }
  }

  if (indexToRemove != -1) {
    String deletedAccountantName = accountants[indexToRemove]["name"];
    accountants.removeAt(indexToRemove);
    print("Accountant '$deletedAccountantName' deleted successfully.");
  } else {
    print("Accountant '$name' not found.");
  }
}

void displayAccountants(List<Map<String, dynamic>> accountants) {
  if (accountants.isEmpty) {
    print("No accountants to display.");
  } else {
    print("List of accountants:");
    for (var accountant in accountants) {
      print("Name: ${accountant["name"]}, Contact: ${accountant["contact"]}");
    }
  }
}