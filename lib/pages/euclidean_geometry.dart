import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class EuclideanGeometryPage extends StatelessWidget {
  const EuclideanGeometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Euclidean Geometry"),
      body: const Text("Euclidean Geometry Content"),
    );
  }
}
