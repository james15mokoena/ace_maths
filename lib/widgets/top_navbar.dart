import 'package:flutter/material.dart';

/// The top app bar for the application.
class TopAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TopAppbar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: title == "Topics" || title == "Review" || title == "About"
          ? Icon(Icons.school_rounded)
          : null,
      title: Text(
        title,
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
    );
  }
}
