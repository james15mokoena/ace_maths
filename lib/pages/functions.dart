import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class FunctionsPage extends StatelessWidget {
  const FunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Functions"),
      body: const Text("Functions Content"),
    );
  }
}
