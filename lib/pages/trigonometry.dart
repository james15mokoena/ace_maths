import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class TrigonometryPage extends StatelessWidget {
  const TrigonometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Trigonometry"),
      body: const Text("Trigonometry Content"),
    );
  }
}
