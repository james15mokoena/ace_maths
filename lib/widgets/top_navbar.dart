import 'package:flutter/material.dart';

/// The top app bar for the application.
class TopAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "AceMath",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
    );
  }
}
