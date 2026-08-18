import 'package:flutter/material.dart';
import 'package:flutter_math_fork/flutter_math.dart';

/// It returns a [WidgetSpan] that displays the degrees symbol.
class DegreeSpan {
  /// Returns a [WidgetSpan] containing the degrees symbol.
  static WidgetSpan degrees() {
    return WidgetSpan(
      alignment: .aboveBaseline,
      baseline: .alphabetic,
      child: Math.tex(
        r"^\circ",
        textStyle: TextStyle(fontSize: 20, color: Colors.purple),
        mathStyle: .display,
      ),
    );
  }
}

/// It returns a [TextSpan] that displays plain text.
class PlainTextSpan {
  /// Returns a [TextSpan].
  static TextSpan plainText({required String text}) {
    return TextSpan(
      text: text,
      style: TextStyle(color: Colors.purple, fontSize: 20),
    );
  }
}
