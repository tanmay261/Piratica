import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  BackgroundPainter()
      : bluePaint = Paint()
          ..color = Colors.blueAccent
          ..style = PaintingStyle.fill,
        greyPaint = Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.fill,
        orangePaint = Paint()
          ..color = Colors.amberAccent
          ..style = PaintingStyle.fill;
  final Paint bluePaint;
  final Paint orangePaint;
  final Paint greyPaint;
  void paint(Canvas canvas, Size size) {
    print(size);
    paintBlue(canvas, size);
  }

  void paintBlue(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(size.width, size.height / 2);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, bluePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
