import 'package:ace_maths/widgets/bottom_navbar.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "About"),
      body: Center(child: const Text("About")),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
