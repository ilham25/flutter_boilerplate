import 'package:flutter/material.dart';
import 'dart:math' as math;

class SeparatedCircularProgress extends StatelessWidget {
  final double progress; // 0.0 to 1.0
  final double size;
  final double strokeWidth;
  final int segments;
  final double gapSize; // Gap in degrees
  final Color progressColor;
  final Color backgroundColor;

  const SeparatedCircularProgress({
    super.key,
    required this.progress,
    this.size = 100,
    this.strokeWidth = 8,
    this.segments = 8,
    this.gapSize = 5,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _SeparatedCircularProgressPainter(
          progress: progress,
          strokeWidth: strokeWidth,
          segments: segments,
          gapSize: gapSize,
          progressColor: progressColor,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}

class _SeparatedCircularProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final int segments;
  final double gapSize;
  final Color progressColor;
  final Color backgroundColor;

  _SeparatedCircularProgressPainter({
    required this.progress,
    required this.strokeWidth,
    required this.segments,
    required this.gapSize,
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - strokeWidth) / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Calculate segment and gap angles
    final totalGapAngle = gapSize * segments;
    final segmentAngle = (360 - totalGapAngle) / segments;

    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Draw each segment
    for (int i = 0; i < segments; i++) {
      final startAngle = (-90 + (segmentAngle + gapSize) * i) * math.pi / 180;
      final sweepAngle = segmentAngle * math.pi / 180;

      // Draw background segment
      canvas.drawArc(rect, startAngle, sweepAngle, false, backgroundPaint);

      // Draw progress segment if within progress range
      final segmentProgress = (progress * segments) - i;
      if (segmentProgress > 0) {
        final progressSweep = sweepAngle * segmentProgress.clamp(0.0, 1.0);
        canvas.drawArc(rect, startAngle, progressSweep, false, progressPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
