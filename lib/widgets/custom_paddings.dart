import 'package:flutter/material.dart';

/// It return a [Padding] widget that can be reused.
class ExpectedQuestionPadding extends StatelessWidget {
  final String question;

  const ExpectedQuestionPadding({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: .topLeft,
        child: Text(
          question,
          style: TextStyle(fontSize: 20, decorationColor: Colors.red),
        ),
      ),
    );
  }
}

/// It returns a [Padding] widget that displays a question.
class QuestionPadding extends StatelessWidget {
  final String question;

  const QuestionPadding({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(10),
      child: Text(
        question,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          color: Colors.red,
          fontSize: 20,
        ),
      ),
    );
  }
}

/// It returns a [Padding] that displays the title of the steps for solving
/// a specific problem.
class StepsPadding extends StatelessWidget {
  final String stepsTitle;

  const StepsPadding({super.key, required this.stepsTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(
        top: 0,
        left: 10,
        bottom: 10,
        right: 10,
      ),
      child: Text(
        stepsTitle,
        style: TextStyle(fontSize: 20, fontStyle: .italic),
      ),
    );
  }
}

/// It returns a [Padding] that displays the case for solving a problem with
/// multiple cases.
class CasePadding extends StatelessWidget {
  final String caseTitle;

  const CasePadding({super.key, required this.caseTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 10, right: 10, bottom: 10),
      child: const Text(
        "Case 1: Given a Graph",
        style: TextStyle(fontWeight: .bold, fontSize: 20),
      ),
    );
  }
}
