import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// This widget will represent any trigonometric graph that is drawn.
class Graph extends StatelessWidget {
  /// The points on the graph.
  final List<FlSpot> points;

  /// The minimum value of x possible on the graph.
  final double? minX;

  /// The maximum value of x possible on the graph.
  final double? maxX;

  /// The maximum value of y possible on the graph.
  final double? minY;

  /// The maximum value of y possible on the graph.
  final double? maxY;

  const Graph({
    super.key,
    required this.points,
    required this.minX,
    required this.maxX,
    required this.minY,
    required this.maxY,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: 10,
        bottom: 10,
        left: 40,
        right: 40,
      ),
      child: SizedBox(
        height: 300,
        //width: 200,
        child: LineChart(
          LineChartData(
            minX: minX,
            maxX: maxX,
            minY: minY,
            maxY: maxY,
            extraLinesData: ExtraLinesData(
              horizontalLines: [HorizontalLine(y: 0, strokeWidth: 1)],
              verticalLines: [VerticalLine(x: 0, strokeWidth: 1)],
            ),
            gridData: FlGridData(show: true),
            borderData: FlBorderData(show: false),
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 30,
                  getTitlesWidget: (value, meta) {
                    return Text('${value.toInt()}');
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true, interval: 0.5),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: points,
                isCurved: true,
                dotData: FlDotData(show: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
