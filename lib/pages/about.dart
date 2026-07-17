import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AceMath"), centerTitle: true),
      body: Center(child: const Text("About the app and the developer.")),
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
