import 'package:flutter/material.dart';

/// It will be used by the user to write a review about the app.
class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AceMath"), centerTitle: true),
      body: Center(child: const Text("Review the app.")),
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
