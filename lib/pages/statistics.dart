import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Statistics"),
      body: const Text("Statistics Content"),
    );
  }
}
