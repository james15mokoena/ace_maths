import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class NumberPatternsPage extends StatelessWidget {
  const NumberPatternsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Number Patterns"),
      body: const Text("Number Patterns Content"),
    );
  }
}
