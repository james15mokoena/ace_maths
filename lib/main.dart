import 'package:ace_maths/routes.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_math_fork/flutter_math.dart';

void main() {
  runApp(const AceMathApp());
}

/// The AceMath app.
class AceMathApp extends StatelessWidget {
  const AceMathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteGenerator.homePage,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      debugShowCheckedModeBanner: false,
    );
  }
}
