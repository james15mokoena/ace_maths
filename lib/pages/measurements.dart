import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class MeasurementsPage extends StatelessWidget {
  const MeasurementsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Measurements"),
      body: const Text("Measurements Content"),
    );
  }
}
