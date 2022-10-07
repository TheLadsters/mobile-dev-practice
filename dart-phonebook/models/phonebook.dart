import 'contact.dart';
import 'dart:io';
import 'dart:convert';

class Phonebook {
  List<Contact> contacts;

  Phonebook(this.contacts);

  void displayContacts() {
    print("-----------------------------");
    for (var elem in contacts) {
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

    contacts.add(Contact(firstName, lastName, phoneNum, address));
  }

  void removeContact() {
    var i = 1, j = 0;
    print(
        "Please Select the number beside the contact to whom you wish to delete: ");
    for (var elem in contacts) {
      print("(${i++}) ${elem.firstName} ${elem.lastName}");
      print("-----------------------------");
    }

    int chosenContact = int.parse(stdin.readLineSync()!);

    if (chosenContact < 0 && chosenContact < contacts.length) {
      chosenContact -= 1;
      contacts.removeAt(chosenContact);
    } else {
      print("Contact not found.");
    }
  }

  void searchAndDisplay() {
    // print("Please enter any contact info found in your phonebook: ");
    // String? info = stdin.readLineSync();

    for (var element in contacts) {
      print(element);
    }
  }
}
