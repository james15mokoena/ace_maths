import 'package:ace_maths/models/topic_model.dart';
import 'package:ace_maths/routes.dart';
import 'package:ace_maths/widgets/bottom_navbar.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

/// This is the landing page of the app. Its content is a list view of
/// all the topics that are covered by the app.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

/// Encapsulates the state of the [HomePage].
class _HomePageState extends State<HomePage> {
  /// The topics that are covered.
  final List<TopicModel> _topics = [
    TopicModel(
      name: "Algebraic Expressions",
      example: Math.tex(
        r"(\frac{1}{5}x + \frac{1}{3}y)(\frac{1}{25}x^2 - \frac{1}{15}xy + \frac{y^2}{9})",
      ),
      targetRoute: RouteGenerator.algebraicExpressionPage,
      image: Image.asset("assets/icons/algebraic_expressions.png"),
      color: Colors.lightBlue[200],
    ),
    TopicModel(
      name: "Exponents",
      example: Math.tex(r"\frac{x^{-2} - y^{-2}}{x^{-1} + y^{-1}}"),
      targetRoute: RouteGenerator.exponentsPage,
      image: Image.asset("assets/icons/exponents.png"),
      color: Colors.deepPurple[300],
    ),
    TopicModel(
      name: "Equations & Inequalities",
      example: Math.tex(
        r"\frac{5}{x^2 - 7x + 12} + \frac{1}{3 - x} = \frac{2}{x - 4}",
      ),
      targetRoute: RouteGenerator.equationsInequalitiesPage,
      image: Image.asset("assets/icons/equations_inequalities.png"),
      color: Colors.green[400],
    ),
    TopicModel(
      name: "Number Patterns",
      example: Math.tex(r"6; 6 + x; 6 + 2x; 6 + 3x; ..."),
      targetRoute: RouteGenerator.numberPatternsPage,
      image: Image.asset("assets/icons/number_patterns.png"),
      color: Colors.amber[700],
    ),
    TopicModel(
      name: "Functions",
      example: Math.tex(r"f(x) = -2(\frac{1}{2})^x + 8"),
      targetRoute: RouteGenerator.functionsPage,
      image: Image.asset("assets/icons/functions.png"),
      color: Colors.deepPurpleAccent[200],
    ),
    TopicModel(
      name: "Trigonometry",
      example: Math.tex(r"2sec(\theta - 20^\circ) = 3"),
      targetRoute: RouteGenerator.trigonometryPage,
      image: Image.asset("assets/icons/trigonometry.png"),
      color: Colors.indigo[300],
    ),
    TopicModel(
      name: "Trigonometic Functions",
      example: Math.tex(r"y = sinx - \frac{1}{2}"),
      targetRoute: RouteGenerator.trigonometricFunctionsPage,
      image: Image.asset("assets/icons/trigonometric_functions.png"),
      color: Colors.pinkAccent[200],
    ),
    TopicModel(
      name: "Analytical Geometry",
      example: Math.tex(r"AB = \sqrt{(x_B - x_A)^2 + (y_B - y_A)^2}"),
      targetRoute: RouteGenerator.analyticalGeometryPage,
      image: Image.asset("assets/icons/analytical_geometry.png"),
      color: Colors.indigoAccent[400],
    ),
    TopicModel(
      name: "Euclidean Geometry",
      example: Math.tex(r"\triangle ABC"),
      targetRoute: RouteGenerator.euclideanGeometryPage,
      image: Image.asset("assets/icons/euclidean_geometry.png"),
      color: Colors.teal[300],
    ),
    TopicModel(
      name: "Measurements",
      example: Math.tex(r"V = \pi r^2h"),
      targetRoute: RouteGenerator.measurementsPage,
      image: Image.asset("assets/icons/measurements.png"),
      color: Colors.yellow[600],
    ),
    TopicModel(
      name: "Financial Mathematics",
      example: Math.tex(r"A = P(1 + i)^n"),
      targetRoute: RouteGenerator.financialMathematicsPage,
      image: Image.asset("assets/icons/financial_mathematics.png"),
      color: Colors.amber[400],
    ),
    TopicModel(
      name: "Statistics",
      example: Math.tex(r"\bar{x} = \frac{\sum x}{n}"),
      targetRoute: RouteGenerator.statisticsPage,
      image: Image.asset("assets/icons/statistics.png"),
      color: Colors.blue[900],
    ),
    TopicModel(
      name: "Probability",
      example: Math.tex(r"P(E) = \frac{n(E)}{n(S)}"),
      targetRoute: RouteGenerator.probabilityPage,
      image: Image.asset("assets/icons/probability.png"),
      color: Colors.deepPurple[600],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Topics"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          addAutomaticKeepAlives: true,
          itemBuilder: (context, itemIndex) {
            return Card(
              elevation: 1,
              surfaceTintColor: Colors.black,
              child: ListTile(
                //tileColor: _topics[itemIndex].color,
                title: Row(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .center,
                  spacing: 20,
                  children: [
                    SizedBox(height: 60, child: _topics[itemIndex].image),
                    Text(
                      _topics[itemIndex].name,
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                titleTextStyle: TextStyle(color: Colors.black),
                isThreeLine: true,
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: _topics[itemIndex].example,
                ),
                subtitleTextStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                titleAlignment: .center,

                onTap: () => Navigator.of(
                  context,
                ).pushNamed(_topics[itemIndex].targetRoute),
              ),
            );
          },
          itemCount: _topics.length,
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
