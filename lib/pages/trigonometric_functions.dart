import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class TrigonometricFunctionsPage extends StatelessWidget {
  const TrigonometricFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Trigonometric Functions"),
      body: const Text("Trigonometric Functions Content"),
    );
  }
}
