import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class FinancialMathematicsPage extends StatelessWidget {
  const FinancialMathematicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Financial Mathematics"),
      body: const Text("Financial Mathematics Content"),
    );
  }
}
