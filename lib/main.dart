import 'package:ace_maths/models/bottom_navbar_model.dart';
import 'package:ace_maths/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_math_fork/flutter_math.dart';

void main() {
  runApp(const AceMathApp());
}

/// The AceMath app.
class AceMathApp extends StatelessWidget {
  const AceMathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavbarModel>(
          create: (_) => BottomNavbarModel(),
        ),
      ],
      child: MaterialApp(
        initialRoute: RouteGenerator.layoutPage,
        onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
