import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class ProbabilityPage extends StatelessWidget {
  const ProbabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Probability"),
      body: const Text("Probability Content"),
    );
  }
}
