import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

/// Contains static methods for generating trigonometric graphs.
class GraphGenerators {
  /// Converts an angle in degrees to radians for use in the Dart's
  /// math library trig. functions.
  static double toRadians(double degrees) {
    return (degrees * pi) / 180;
  }

  /// Generates the coordinates for a sine graph.
  static List<FlSpot> generateSineGraph(double minX, double maxX, double step) {
    List<FlSpot> points = [];

    for (double x = minX; x <= maxX; x += step) {
      //double output = tode
      points.add(FlSpot(x, sin(toRadians(x))));
    }

    return points;
  }

  /// Converts an angle in radians to degrees for use in the app.
  //static double toDegrees(double radians) {
  //return (radians * 180) / pi;
  //}
}
