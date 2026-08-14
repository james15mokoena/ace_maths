import 'package:flutter/material.dart';

/// It returns a reusable [Card] that displays what a learner is expected
/// to be able to do, after studying the given topic.
class ExpectedAbilityCard extends StatelessWidget {
  const ExpectedAbilityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      //margin: const EdgeInsetsGeometry.all(7),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: const Text(
          "After studying this topic, you must be able to solve the following problems:",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
