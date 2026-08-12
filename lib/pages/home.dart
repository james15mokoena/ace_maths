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
      //color: Colors.indigoAccent,
      targetRoute: RouteGenerator.algebraicExpressionPage,
    ),
    TopicModel(
      name: "Exponents",
      example: Math.tex(r"\frac{x^{-2} - y^{-2}}{x^{-1} + y^{-1}}"),
      targetRoute: RouteGenerator.exponentsPage,
    ),
    TopicModel(
      name: "Equations & Inequalities",
      example: Math.tex(
        r"\frac{5}{x^2 - 7x + 12} + \frac{1}{3 - x} = \frac{2}{x - 4}",
      ),
      targetRoute: RouteGenerator.equationsInequalitiesPage,
    ),
    TopicModel(
      name: "Number Patterns",
      example: Math.tex(r"6; 6 + x; 6 + 2x; 6 + 3x; ..."),
      targetRoute: RouteGenerator.numberPatternsPage,
    ),
    TopicModel(
      name: "Functions",
      example: Math.tex(r"f(x) = -2(\frac{1}{2})^x + 8"),
      targetRoute: RouteGenerator.functionsPage,
    ),
    TopicModel(
      name: "Trigonometry",
      example: Math.tex(r"2sec(\theta - 20^\circ) = 3"),
      targetRoute: RouteGenerator.trigonometryPage,
    ),
    TopicModel(
      name: "Trigonometic Functions",
      example: Math.tex(r"y = sinx - \frac{1}{2}"),
      targetRoute: RouteGenerator.trigonometricFunctionsPage,
    ),
    TopicModel(
      name: "Analytical Geometry",
      example: Math.tex(r"AB = \sqrt{(x_B - x_A)^2 + (y_B - y_A)^2}"),
      targetRoute: RouteGenerator.analyticalGeometryPage,
    ),
    TopicModel(
      name: "Euclidean Geometry",
      example: Math.tex(r"\triangle ABC"),
      targetRoute: RouteGenerator.euclideanGeometryPage,
    ),
    TopicModel(
      name: "Measurements",
      example: Math.tex(r"V = \pi r^2h"),
      targetRoute: RouteGenerator.measurementsPage,
    ),
    TopicModel(
      name: "Financial Mathematics",
      example: Math.tex(r"A = P(1 + i)^n"),
      targetRoute: RouteGenerator.financialMathematicsPage,
    ),
    TopicModel(
      name: "Statistics",
      example: Math.tex(r"\bar{x} = \frac{\sum x}{n}"),
      targetRoute: RouteGenerator.statisticsPage,
    ),
    TopicModel(
      name: "Probability",
      example: Math.tex(r"P(E) = \frac{n(E)}{n(S)}"),
      targetRoute: RouteGenerator.probabilityPage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Topics"),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          addAutomaticKeepAlives: true,
          itemBuilder: (context, itemIndex) {
            return SizedBox(
              height: 150,
              child: Card(
                child: ListTile(
                  title: Text(
                    _topics[itemIndex].name,
                    style: TextStyle(fontSize: 22),
                  ),
                  titleTextStyle: TextStyle(fontSize: 24, color: Colors.black),
                  isThreeLine: true,
                  subtitle: Padding(
                    padding: EdgeInsetsGeometry.only(top: 50),
                    child: _topics[itemIndex].example,
                  ),
                  subtitleTextStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  titleAlignment: .center,
                  tileColor: Colors.grey,
                  hoverColor: Colors.blueGrey,
                  onTap: () => Navigator.of(
                    context,
                  ).pushNamed(_topics[itemIndex].targetRoute),
                ),
              ),
            );
          },
          separatorBuilder: (context, separatorIndex) {
            return const Divider();
          },
          itemCount: _topics.length,
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
