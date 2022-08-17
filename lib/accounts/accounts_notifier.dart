import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/foundation.dart';
import 'package:vite/vite.dart';

import '../database/boxes.dart';
import 'account.dart';
import 'account_selection.dart';
import 'selection_history.dart';

class AccountsNotifier extends ChangeNotifier {
  static String accountKey(int index) => '$index';
  late final SelectionHistory<int> _recents;
  late final Map<int, Account> _accounts;
  late final Map<ViteAddress, int> _addressIndexMap;

  late final TypedBox<Account> _accountsBox;
  late final AccountSelection _accountSelection;

  late Account _mainAccount;
  late final int _maxAccounts;

  Account get mainAccount => _mainAccount;
  Account get selected => _accounts[_recents.selected] ?? _mainAccount;
  Account? get recentLast => _accounts[_recents.recentLast];
  Account? get recentSecondLast => _accounts[_recents.recentSecondLast];
  Account? getAccountWithIndex(int index) => _accounts[index];

  IList<Account> get accounts => IList(_accounts.values).sort(
        (a1, a2) => a1.index.compareTo(a2.index),
      );

  int? get firstAvailableIndex {
    for (int i = 1; i < _maxAccounts; ++i) {
      if (!_accounts.containsKey(i)) {
        return i;
      }
    }
    return null;
  }

  // TODO - fix workaround
  bool disposed = false;

  @override
  void notifyListeners() {
    if (disposed) {
      return;
    }
    super.notifyListeners();
  }

  AccountsNotifier({
    required TypedBox<Account> accountsBox,
    required AccountSelection selection,
    required Address mainAddress,
    int mainIndex = 0,
    required int maxAccounts,
  }) : assert(mainIndex >= 0) {
    _accountsBox = accountsBox;
    _accountSelection = selection;
    _maxAccounts = maxAccounts;

    _accounts = _accountsBox.getAll().map(
          (key, value) => MapEntry(value.index, value),
        );

    _mainAccount = _accounts.putIfAbsent(
      mainIndex,
      () => Account(
        index: mainIndex,
        address: mainAddress,
        name: 'Main Account',
      ),
    );

    _addressIndexMap = Map.fromEntries(_accounts.values.map(
      (e) => MapEntry(e.viteAddress, e.index),
    ));

    _recents = _accountSelection.get(mainIndex);
  }

  bool containsAddress(ViteAddress address) {
    return indexOfAddress(address) != null;
  }

  int? indexOfAddress(ViteAddress address) {
    return _addressIndexMap[address];
  }

  bool isAccountSelected(Account account) {
    return account.index == selected.index;
  }

  String? nameForAddress(ViteAddress address) {
    return _accounts[_addressIndexMap[address] ?? -1]?.name;
  }

  void selectAccount(Account account) {
    if (account == selected) {
      return;
    }

    if (_accounts[account.index] == null) {
      _addAccount(account);
    }

    _recents.select(account.index);
    _accountSelection.set(_recents);

    notifyListeners();
  }

  Future<void> selectAccountAsync(Account account) async {
    if (account == selected) {
      return;
    }

    if (_accounts[account.index] == null) {
      _addAccount(account);
    }

    _recents.select(account.index);
    await _accountSelection.set(_recents);

    notifyListeners();
  }

  void removeAccount(Account account) {
    if (account.index == _mainAccount.index) {
      return;
    }

    _accounts.remove(account.index);
    _accountsBox.remove(accountKey(account.index));
    _recents.remove(account.index);
    _accountSelection.set(_recents);
    _addressIndexMap.remove(account.viteAddress);

    notifyListeners();
  }

  void _addAccount(Account account) {
    _accounts[account.index] = account;
    _addressIndexMap[account.viteAddress] = account.index;
    _accountsBox.set(accountKey(account.index), account);
  }

  void addAccount(Account account) {
    _addAccount(account);

    notifyListeners();
  }

  void changeAccountName(Account account, String name) {
    final newAccount = account.copyWith(name: name);
    final index = account.index;
    if (index == _mainAccount.index) {
      _mainAccount = newAccount;
    }
    _accounts[index] = newAccount;
    _accountsBox.set(accountKey(index), newAccount);

    notifyListeners();
  }
}
