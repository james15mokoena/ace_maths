import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class TrigonometricFunctionsPage extends StatelessWidget {
  const TrigonometricFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Trigonometric Functions"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              child: const Text(
                "Study",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: .topLeft,
              child: const Text(
                "1. What is a Trigonometric Function?",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 25,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
