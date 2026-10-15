import 'package:flutter/material.dart';

class SalesChartPainter extends CustomPainter {
  final List<double> salesData;

  SalesChartPainter({
    required this.salesData,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (salesData.length < 2) return;

    const horizontalPadding = 5.0;
    const verticalPadding = 8.0;

    final chartWidth = size.width - horizontalPadding * 2;
    final chartHeight = size.height - verticalPadding * 2;

    final minValue = salesData.reduce(
          (a, b) => a < b ? a : b,
    );

    final maxValue = salesData.reduce(
          (a, b) => a > b ? a : b,
    );

    final range = maxValue - minValue;

    final points = <Offset>[];

    for (int i = 0; i < salesData.length; i++) {
      final x = horizontalPadding +
          (chartWidth * i / (salesData.length - 1));

      final normalizedValue = range == 0
          ? 0.5
          : (salesData[i] - minValue) / range;

      final y = verticalPadding +
          chartHeight * (1 - normalizedValue);

      points.add(Offset(x, y));
    }

    final path = Path()..moveTo(points.first.dx, points.first.dy);

    for (int i = 0; i < points.length - 1; i++) {
      final current = points[i];
      final next = points[i + 1];
      final middleX = (current.dx + next.dx) / 2;

      path.cubicTo(
        middleX,
        current.dy,
        middleX,
        next.dy,
        next.dx,
        next.dy,
      );
    }

    final linePaint = Paint()
      ..color = const Color(0xFF78A985)
      ..strokeWidth = 2.2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path, linePaint);

    final lastPoint = points.last;

    final circlePaint = Paint()
      ..color = const Color(0xFF78A985)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(lastPoint, 4.5, circlePaint);

    final centerPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    canvas.drawCircle(lastPoint, 2.3, centerPaint);
  }

  @override
  bool shouldRepaint(covariant SalesChartPainter oldDelegate) {
    return oldDelegate.salesData != salesData;
  }
}