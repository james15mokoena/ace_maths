import 'package:flutter/material.dart';

/// Contains the mutable state of the [BottomNavbar] widget and notifies the
/// widget of any changes to its state so that it can rebuild.
class BottomNavbarModel with ChangeNotifier {
  /// stores the index of the currently selected navigation destination.
  int _selectedIndex = 0;

  /// Returns the current value of the [_selectedIndex].
  int get selectedIndex => _selectedIndex;

  /// Updates the value of [_selectedIndex] if it has changed.
  void updateSelectedIndex(int newIndex) {
    if (newIndex >= 0 && newIndex != _selectedIndex) {
      _selectedIndex = newIndex;
      notifyListeners();
    }
  }
}
