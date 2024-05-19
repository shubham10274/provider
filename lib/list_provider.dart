import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
class NumbersListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];

  void add() {
    int last = numbers.last;
    numbers.add(last + 1);
  }

  @override
  void notifyListeners() {
    // will potentially request a semantics update.
    super.notifyListeners();
  }
}
