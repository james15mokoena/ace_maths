import 'package:ace_maths/widgets/cards.dart';
import 'package:ace_maths/widgets/custom_paddings.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

class TrigonometricFunctionsPage extends StatelessWidget {
  const TrigonometricFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(title: "Trigonometric Functions"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              child: const Text(
                "Expectations",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ExpectedAbilityCard(),
          ExpectedQuestionPadding(
            question:
                "1. How to determine the period of a sin, cos or tan function?",
          ),
          ExpectedQuestionPadding(
            question:
                "2. How to determine the amplitude of a sin or cos function?",
          ),
          ExpectedQuestionPadding(
            question:
                "3. How to determine the vertical stretch of a tan function?",
          ),
          ExpectedQuestionPadding(
            question:
                "4. How to determine the vertical shift of a sin, cos or tan function?",
          ),
          ExpectedQuestionPadding(
            question:
                "5. How to determine the maximum and minimum y-values of a sin or cos function?",
          ),
          ExpectedQuestionPadding(
            question:
                "6. How to determine the range of a sin, cos or tan function?",
          ),
          ExpectedQuestionPadding(
            question:
                "7. How to sketch a sin, cos or tan graph given an equation?",
          ),
          ExpectedQuestionPadding(
            question:
                "8. How to determine the equation of a sin, cos or tan graph?",
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Align(
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          QuestionPadding(
            question:
                "1. How to determine the period of a sin, cos or tan function?",
          ),
          // definition of a Period widget
          DefinitionPadding(
            term: "Period",
            definition:
                "Is the length of the interval on the x-axis (which is the axis for angles) that contains exactly one cycle or after which the shape of the graph repeats.",
          ),
          StepsPadding(
            stepsTitle:
                "Steps for determining the period of a sin, cos or tan function:",
          ),
          CasePadding(caseTitle: "Case 1: Given a Graph"),
          Padding(
            padding: const EdgeInsetsGeometry.only(
              left: 20,
              top: 0,
              bottom: 10,
              right: 5,
            ),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              spacing: 10,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      const TextSpan(
                        text:
                            "1. Look at the graph, and identify the start angle of the graph (which is usually ",
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Math.tex(
                          r"0^\circ",
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ") and the angle after which the shape of the graph begins to repeat.",
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    text:
                        "2. Subtract the start angle from the angle at which the shape of the graph starts to repeat, then the result is the period of the graph.",
                  ),
                ),
              ],
            ),
          ),
          CasePadding(caseTitle: "Case 2: Given a Function"),
          Padding(
            padding: const EdgeInsetsGeometry.only(
              left: 20,
              top: 0,
              bottom: 10,
              right: 5,
            ),
            child: Column(
              crossAxisAlignment: .start,
              mainAxisSize: .min,
              spacing: 10,
              children: [
                RichText(
                  text: const TextSpan(
                    text:
                        "1. Identify the type of trigonometric function given, whether it is a sin, cos or tan function.",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "2. Let variable ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const TextSpan(
                        text: "b",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontStyle: .italic,
                        ),
                      ),
                      const TextSpan(
                        text:
                            " equals the coefficient of the input variable x.",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "3. Use this formula: ",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      WidgetSpan(
                        child: Math.tex(
                          r"Period = \frac{360^\circ}{b}",
                          textStyle: TextStyle(fontSize: 20),
                          mathStyle: MathStyle.script,
                        ),
                      ),
                      const TextSpan(
                        text:
                            " to calculate the period for a sin or cos function or this formula: ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      WidgetSpan(
                        child: Math.tex(
                          r"Period = \frac{180^\circ}{b}",
                          textStyle: TextStyle(fontSize: 20),
                          mathStyle: MathStyle.script,
                        ),
                      ),
                      const TextSpan(
                        text: " to calculate the period for a tan function.",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
