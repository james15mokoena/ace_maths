import 'package:flutter/material.dart';

/// This is the landing page of the app. Its content is a list view of
/// all the topics that are covered by the app.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AceMath"), centerTitle: true),
      body: Center(child: const Text("Mathematics Topics")),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.reviews), label: "Review"),
          NavigationDestination(icon: Icon(Icons.info), label: "About"),
        ],
      ),
    );
  }
}
