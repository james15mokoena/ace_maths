import 'package:ace_maths/pages/about.dart';
import 'package:ace_maths/pages/home.dart';
import 'package:ace_maths/pages/review.dart';
import 'package:flutter/material.dart';

/// It maps named routes to actual pages.
class RouteGenerator {
  /// The route to the home page.
  static const String homePage = "/";

  /// The route to the review page.
  static const String reviewPage = "/review";

  /// The route to the about page.
  static const String aboutPage = "/about";

  /// The route to the algebraic expression page.
  static const String algebraiExpressionPage = "/algebraic_expression";

  /// The route to the exponents page.
  static const String exponentsPage = "/exponents";

  /// The route to the equations and inequalities page.
  static const String equationsInequalitiesPage = "/equations_inequalities";

  /// The route to the number patterns page.
  static const String numberPatternsPage = "/number_patterns";

  /// The route to the functions page.
  static const String functionsPage = "/functions";

  /// The route to the trigonometry page.
  static const String trigonometryPage = "/trigonometry";

  /// The route to the trigonometric functions page.
  static const String trigonometricFunctionsPage = "/trigonometric_functions";

  /// The route to the analytical geometry page.
  static const String analyticalGeometryPage = "/analytical_geometry";

  /// The route to the euclidean geometry page.
  static const String euclideanGeometryPage = "/euclidean_geometry";

  /// The route to the measurements page.
  static const String measurementsPage = "/measurements";

  /// The route to the statistics page.
  static const String statisticsPage = "/statistics";

  /// The route to the probability page.
  static const String probabilityPage = "/probability";

  /// Takes in a route settings object that contains a `named route` that will be
  /// mapped to an actual page that must be displayed on the screen.
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case reviewPage:
        return MaterialPageRoute(builder: (_) => const ReviewPage());
      case aboutPage:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      default:
        throw RouteException("Invalid named route.");
    }
  }
}

/// When an invalid named route is provided, then this exception will be thrown.
class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
