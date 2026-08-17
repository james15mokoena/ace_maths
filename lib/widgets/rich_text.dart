/*
import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

/// It returns a [RichText] containing the position of this step in the
/// process of solving a problem as well as the description of the step.
class StepRichText extends StatelessWidget {
  /// The position of this step in the process.
  final String position;

  /// The description of this step in the process.
  final String stepDescription;

  /// A mathematical expression to be displayed.
  final WidgetSpan? mathExpression;

  const StepRichText({
    super.key,
    required this.position,
    required this.stepDescription,
    this.mathExpression
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 20, color: Colors.black),
        children: [
          TextSpan(
            text: position,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          mathExpression ?? WidgetSpan(child: Text("")),
          const TextSpan(
            text:
                ") and the angle after which the shape of the graph begins to repeat.",
          ),
        ],
      ),
    );
  }
}
*/
