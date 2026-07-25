import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class AnalyticalGeometryPage extends StatelessWidget {
  const AnalyticalGeometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Analytical Geometry"),
      body: const Text("Analytical Geometry Content"),
    );
  }
}
