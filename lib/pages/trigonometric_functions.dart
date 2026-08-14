import 'package:ace_maths/widgets/cards.dart';
import 'package:ace_maths/widgets/custom_paddings.dart';
import 'package:ace_maths/widgets/top_navbar.dart';
import 'package:flutter/material.dart';

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
            definition:
                "A period is the length of the interval on the x-axis (which is the axis for angles) that contains exactly one cycle or after which the shape of the graph repeats.",
          ),
          StepsPadding(
            stepsTitle:
                "Steps for determining the period of a sin or cos function:",
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
                const Text("ONE"),
                const Text("TWO"),
                const Text("THREE"),
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
                const Text("Four"),
                const Text("Five"),
                const Text("Six"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
