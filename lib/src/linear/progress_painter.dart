import 'package:flutter/material.dart';

///Foreground progress bar painter
///Requires [value] to set progress
///Optional [gradient] or [color] for bar infill
class ProgressPainter extends CustomPainter {
  const ProgressPainter({
    required this.value,
    required this.color,
    required this.thumbRadius,
  });

  ///current progress bar value
  final double value;

  ///progress bar gradient color
  final Color color;

  final double thumbRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.color = color;

    canvas.drawCircle(
        Offset(size.width * value, size.height / 2), thumbRadius, paint);
    // canvas.clipRRect(RRect.fromRectAndRadius(
    //     Offset.zero & size, Radius.circular(size.height / 2)));
    // canvas.drawRRect(
    //     RRect.fromRectAndRadius(
    //         Rect.fromLTRB(0, 0, size.width * value, size.height),
    //         Radius.circular(size.height / 2)),
    //     paint);
  }

  @override
  bool shouldRepaint(covariant ProgressPainter oldDelegate) {
    return value != oldDelegate.value;
  }
}
