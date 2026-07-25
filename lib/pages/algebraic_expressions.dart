import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class AlgebraicExpressionsPage extends StatelessWidget {
  const AlgebraicExpressionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Algebraic Expressions"),
      body: ElevatedButton(
        onPressed: () => print("Algrebraic page"),
        child: const Text("Algebraic Expression Content"),
      ),
    );
  }
}
