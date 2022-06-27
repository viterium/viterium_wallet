import 'package:flutter/foundation.dart';
import 'package:viterium_wallet/util/sharedprefsutil.dart';

import '../database/boxes.dart';
import 'contact.dart';
import 'contact_labels.dart';

const defaultContacts = {
  'vite_0608e2a5caa926d664d6c7f9992befae6b9dca5347d1858e4e': '@ViteriumTeam',
};

class ContactsNotifier extends ChangeNotifier {
  final TypedBox<Contact> _contactsBox;
  final SharedPrefsUtil sharedPrefsUtil;

  final Map<String, Contact> _nameMap = {};
  final Map<String, Contact> _addressMap = {};

  List<Contact> get contacts =>
      _nameMap.values.toList()..sort((c1, c2) => c1.name.compareTo(c2.name));

  ContactsNotifier(this._contactsBox, this.sharedPrefsUtil) {
    _contactsBox.getAll().forEach((key, value) {
      if (key != value.name) {
        _contactsBox.remove(key);
        _contactsBox.set(value.name, value);
      }
      _nameMap[value.name] = value;
      _addressMap[value.address] = value;
    });
    _addSampleContact();
  }

  Future<int> saveContacts(List<Contact> contacts) async {
    int count = 0;
    for (final contact in contacts) {
      if (_nameMap[contact.name] == null) {
        ++count;
        _nameMap[contact.name] = contact;
        _addressMap[contact.address] = contact;
        _contactsBox.set(contact.name, contact);
      }
    }

    notifyListeners();
    return count;
  }

  Future<void> addContact(Contact contact) async {
    _nameMap[contact.name] = contact;
    _addressMap[contact.address] = contact;
    _contactsBox.set(contact.name, contact);

    notifyListeners();
  }

  Future<void> removeContact(Contact contact) async {
    _nameMap.remove(contact.name);
    _addressMap.remove(contact.address);
    _contactsBox.remove(contact.name);

    notifyListeners();
  }

  void exists(Contact contact) => _nameMap.containsKey(contact.name);

  int get numContacts => _nameMap.length;

  bool contactExistsWithAddress(String address) => _addressMap[address] != null;

  Contact? getContactWithAddress(
    String address, {
    bool includeLabels = false,
  }) {
    return _addressMap[address] ??
        (includeLabels ? labeledAddresses[address] : null);
  }

  Contact? getLabelForAddress(String address) => labeledAddresses[address];

  bool contactExistsWithName(String name) => _nameMap[name] != null;

  Contact? getContactWithName(String name) => _nameMap[name];

  List<Contact> getContactsWithNameLike(String pattern) {
    final sPattern = pattern.toLowerCase();
    return _nameMap.values
        .where((contact) => contact.name.toLowerCase().contains(sPattern))
        .toList();
  }

  /// Add default contacts if it hasn't already been added
  Future<void> _addSampleContact() async {
    final contactAdded = sharedPrefsUtil.getFirstContactAdded();
    if (!contactAdded) {
      defaultContacts.forEach((key, value) {
        final addressExists = contactExistsWithAddress(key);
        if (addressExists) {
          return;
        }
        final nameExists = contactExistsWithName(value);
        if (nameExists) {
          return;
        }
        final contact = Contact(name: value, address: key);
        addContact(contact);
      });

      await sharedPrefsUtil.setFirstContactAdded(true);
    }
  }
}
