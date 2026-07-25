import 'package:ace_maths/models/bottom_navbar_model.dart';
import 'package:ace_maths/pages/about.dart';
import 'package:ace_maths/pages/home.dart';
import 'package:ace_maths/pages/review.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavbarModel>(
      builder: (_, bottomNavbarModel, _) {
        return <Widget>[
          const HomePage(),
          const ReviewPage(),
          const AboutPage(),
        ][bottomNavbarModel.selectedIndex];
      },
    );
  }
}
