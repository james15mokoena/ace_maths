import 'package:ace_maths/pages/about.dart';
import 'package:ace_maths/pages/algebraic_expressions.dart';
import 'package:ace_maths/pages/analytical_geometry.dart';
import 'package:ace_maths/pages/equations_inequalities.dart';
import 'package:ace_maths/pages/euclidean_geometry.dart';
import 'package:ace_maths/pages/exponents.dart';
import 'package:ace_maths/pages/financial_mathematics.dart';
import 'package:ace_maths/pages/functions.dart';
import 'package:ace_maths/pages/home.dart';
import 'package:ace_maths/pages/layout.dart';
import 'package:ace_maths/pages/measurements.dart';
import 'package:ace_maths/pages/number_patterns.dart';
import 'package:ace_maths/pages/probability.dart';
import 'package:ace_maths/pages/review.dart';
import 'package:ace_maths/pages/statistics.dart';
import 'package:ace_maths/pages/trigonometric_functions.dart';
import 'package:ace_maths/pages/trigonometry.dart';
import 'package:flutter/material.dart';

/// It maps named routes to actual pages.
class RouteGenerator {
  /// The route to the layout page.
  static const String layoutPage = "/";

  /// The route to the home page.
  static const String homePage = "/home";

  /// The route to the review page.
  static const String reviewPage = "/review";

  /// The route to the about page.
  static const String aboutPage = "/about";

  /// The route to the algebraic expression page.
  static const String algebraicExpressionPage = "/algebraic_expression";

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

  /// The route to the financial mathematics page.
  static const String financialMathematicsPage = "/financial_mathematics";

  /// The route to the statistics page.
  static const String statisticsPage = "/statistics";

  /// The route to the probability page.
  static const String probabilityPage = "/probability";

  /// Takes in a route settings object that contains a `named route` that will be
  /// mapped to an actual page that must be displayed on the screen.
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case layoutPage:
        return MaterialPageRoute(builder: (_) => const LayoutPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case reviewPage:
        return MaterialPageRoute(builder: (_) => const ReviewPage());
      case aboutPage:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case algebraicExpressionPage:
        return MaterialPageRoute(
          builder: (_) => const AlgebraicExpressionsPage(),
        );
      case exponentsPage:
        return MaterialPageRoute(builder: (_) => const ExponentsPage());
      case equationsInequalitiesPage:
        return MaterialPageRoute(
          builder: (_) => const EquationsInequalitiesPage(),
        );
      case numberPatternsPage:
        return MaterialPageRoute(builder: (_) => const NumberPatternsPage());
      case functionsPage:
        return MaterialPageRoute(builder: (_) => const FunctionsPage());
      case trigonometryPage:
        return MaterialPageRoute(builder: (_) => const TrigonometryPage());
      case trigonometricFunctionsPage:
        return MaterialPageRoute(
          builder: (_) => const TrigonometricFunctionsPage(),
        );
      case analyticalGeometryPage:
        return MaterialPageRoute(
          builder: (_) => const AnalyticalGeometryPage(),
        );
      case euclideanGeometryPage:
        return MaterialPageRoute(builder: (_) => const EuclideanGeometryPage());
      case measurementsPage:
        return MaterialPageRoute(builder: (_) => const MeasurementsPage());
      case financialMathematicsPage:
        return MaterialPageRoute(
          builder: (_) => const FinancialMathematicsPage(),
        );
      case statisticsPage:
        return MaterialPageRoute(builder: (_) => const StatisticsPage());
      case probabilityPage:
        return MaterialPageRoute(builder: (_) => const ProbabilityPage());
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
