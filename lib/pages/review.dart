import 'package:ace_maths/widgets/bottom_navbar.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

/// It will be used by the user to write a review about the app.
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Review"),
      body: Center(child: const Text("Review")),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
