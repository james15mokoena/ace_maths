import 'package:ace_maths/widgets/bottom_navbar.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

/// This is the landing page of the app. Its content is a list view of
/// all the topics that are covered by the app.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("Mathematics Topics"));
  }
}
