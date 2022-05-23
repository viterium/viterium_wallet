import 'package:flutter/foundation.dart';
import 'package:viterium_wallet/util/sharedprefsutil.dart';

import '../database/boxes.dart';
import 'contact.dart';

const defaultContacts = {
  'vite_0608e2a5caa926d664d6c7f9992befae6b9dca5347d1858e4e': '@ViteriumTeam',
};

const labeledAddresses = {
  'vite_0000000000000000000000000000000000000003f6af7459b9': const Contact(
    name: '#Quota',
    address: 'vite_0000000000000000000000000000000000000003f6af7459b9',
  ),
  'vite_0000000000000000000000000000000000000004d28108e76b': const Contact(
    name: '#Consensus',
    address: 'vite_0000000000000000000000000000000000000004d28108e76b',
  ),
  'vite_000000000000000000000000000000000000000595292d996d': const Contact(
    name: '#TokenIssuance',
    address: 'vite_000000000000000000000000000000000000000595292d996d',
  ),
  'vite_0000000000000000000000000000000000000006e82b8ba657': const Contact(
    name: '#VitexFund',
    address: 'vite_0000000000000000000000000000000000000006e82b8ba657',
  ),
  'vite_00000000000000000000000000000000000000079710f19dc7': const Contact(
    name: '#VitexTrade',
    address: 'vite_00000000000000000000000000000000000000079710f19dc7',
  ),
  'vite_65ea4fbb8fc4a0f5cac745e0a97844ff2e9e4287aa0c35a28f': const Contact(
    name: '#VivaStaking v0.1',
    address: 'vite_65ea4fbb8fc4a0f5cac745e0a97844ff2e9e4287aa0c35a28f',
  ),
  'vite_6b97e21d57909a881db29385b2339725ebbdf708b9eb487985': const Contact(
    name: '#VivaStaking v0.2',
    address: 'vite_6b97e21d57909a881db29385b2339725ebbdf708b9eb487985',
  ),
  'vite_6217fbda565d83ea03d23034054fb036a0d7a540993354e1e6': const Contact(
    name: '#VivaStaking v0.3',
    address: 'vite_6217fbda565d83ea03d23034054fb036a0d7a540993354e1e6',
  ),
  'vite_12e90482e9e13bbbeb1919e7993ffadd375f6b7aa483452cbf': const Contact(
    name: '#VivaStaking v0.4',
    address: 'vite_12e90482e9e13bbbeb1919e7993ffadd375f6b7aa483452cbf',
  ),
  'vite_cc2d0c2c34ae6af8bd58e111ca8c958d002c2b3199f449c8d7': const Contact(
    name: '#BeefStake v0.1',
    address: 'vite_cc2d0c2c34ae6af8bd58e111ca8c958d002c2b3199f449c8d7',
  ),
  'vite_c85b335e221fc99631785f3d579edd1b7a2691131b7f3998a3': const Contact(
    name: '#BeefStake v0.2',
    address: 'vite_c85b335e221fc99631785f3d579edd1b7a2691131b7f3998a3',
  ),
  'vite_178bc3256ac2b30cc923cd0c5f138e79b8b7257e43f69606f3': const Contact(
    name: '#VitaBot',
    address: 'vite_178bc3256ac2b30cc923cd0c5f138e79b8b7257e43f69606f3',
  ),
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
