import 'models/contact.dart';
import 'models/phonebook.dart';

void main() {
  List<Contact> contacts = <Contact>[];
  contacts.add(Contact("Jerald", "Magsipoc", "09322211842", "Mandaue City"));
  contacts.add(Contact("Miguel", "Mendoza", "123456789011", "Liloan"));
  contacts.add(Contact(
      "Rhys", "Tejano", "09398490870", "Hilltop Subdivision, Consolacion"));
  contacts.add(Contact("Isaiah", "Quinicot", "09765430290", "Consolacion"));
  contacts.add(Contact("John", "Magsipoc", "09114453872", "Mandaue City"));

  Phonebook phonebook = Phonebook(contacts);

  phonebook.searchAndDisplay("09114453872");
}
