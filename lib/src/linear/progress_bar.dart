import 'package:flutter/material.dart';

import 'background_painter.dart';
import 'progress_painter.dart';

/// Basic progress bar widget.
///
/// Requires [value] to show progress
/// [color] or [gradient] to fill the progress bar. Only one parameter is allowed.
/// Optional [backgroundColor], defaults to transparent
/// Optional [width] defaults to 200.0
/// Optional [height] defaults to 10.0
class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    required this.value,
    this.width = 200.0,
    this.height = 10.0,
    required this.color,
    this.gradient,
    this.thumbRadius = 10,
  }) : super(key: key);

  ///progress bar width
  final double width;

  ///progress bar height
  final double height;

  ///current progress value
  final double? value;

  ///progress bar gradient parameter
  final Gradient? gradient;

  ///progress bar color parameter
  final Color color;
  final double thumbRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: thumbRadius / 2),
      child: CustomPaint(
        size: Size(width, height),
        foregroundPainter: ProgressPainter(
          value: value!,
          color: color,
          thumbRadius: thumbRadius,
        ),
        painter: BackgroundPainter(
          gradient: gradient,
        ),
      ),
    );
  }
}
