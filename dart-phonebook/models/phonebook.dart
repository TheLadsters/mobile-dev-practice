import 'contact.dart';
import 'dart:io';
import 'dart:convert';

class Phonebook {
  List<Contact> _contacts;

  Phonebook(this._contacts);

  void displayContacts() {
    print("-----------------------------");
    for (var elem in _contacts) {
      print("First Name: ${elem.firstName}");
      print("Last Name: ${elem.lastName}");
      print("Phone Number: ${elem.phoneNumber}");
      print("Address: ${elem.address}");
      print("-----------------------------");
    }
  }

  void addContact() {
    print("Please enter First Name of contact: ");
    String? firstName = stdin.readLineSync();
    print("Please enter Last Name of contact: ");
    String? lastName = stdin.readLineSync();
    print("Please enter Phone Number of contact: ");
    String? phoneNum = stdin.readLineSync();
    print("Please enter Address of contact: ");
    String? address = stdin.readLineSync();

    _contacts.add(Contact(firstName, lastName, phoneNum, address));
  }

  void removeContact() {
    var i = 1, j = 0;
    print(
        "Please Select the number beside the contact to whom you wish to delete: ");
    for (var elem in _contacts) {
      print("(${i++}) ${elem.firstName} ${elem.lastName}");
      print("-----------------------------");
    }

    int chosenContact = int.parse(stdin.readLineSync()!);

    if (chosenContact > 0 && chosenContact < _contacts.length) {
      chosenContact -= 1;
      _contacts.removeAt(chosenContact);
    } else {
      print("Contact not found.");
    }
  }

  Contact? _findContact(String contactNumber) {
    Contact? result =
        _contacts.firstWhere((x) => x.phoneNumber == contactNumber);
    return result;
  }

  void searchAndDisplay(String numberContact) {
    Contact? contactPerson = _findContact(numberContact);

    if (contactPerson != null) {
      print("-----------------------------");
      print("First Name: ${contactPerson.firstName}");
      print("Last Name: ${contactPerson.lastName}");
      print("Phone Number: ${contactPerson.phoneNumber}");
      print("Address: ${contactPerson.address}");
      print("-----------------------------");
    } else {
      print("Contact Not Found");
    }
  }
}
