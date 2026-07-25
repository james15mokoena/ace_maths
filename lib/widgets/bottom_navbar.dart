import 'package:ace_maths/models/bottom_navbar_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The bottom navigation bar of the application.
class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

/// Contains and handles the mutable state of the [BottomNavbar].
class _BottomNavbarState extends State<BottomNavbar> {
  //

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavbarModel>(
      builder: (_, bottomNavbarModel, _) {
        return NavigationBar(
          backgroundColor: Colors.blueGrey,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home, fontWeight: FontWeight.bold),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.reviews, fontWeight: FontWeight.bold),
              label: "Review",
            ),
            NavigationDestination(
              icon: Icon(Icons.info, fontWeight: FontWeight.bold),
              label: "About",
            ),
          ],
          onDestinationSelected: (selectedIndex) =>
              bottomNavbarModel.updateSelectedIndex(selectedIndex),
          selectedIndex: bottomNavbarModel.selectedIndex,
          labelTextStyle: WidgetStateProperty.fromMap(
            <WidgetStatesConstraint, TextStyle>{
              WidgetState.any: TextStyle(fontSize: 18),
            },
          ),
        );
      },
    );
  }
}
