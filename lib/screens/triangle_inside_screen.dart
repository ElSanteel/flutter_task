import 'package:flutter/material.dart';

class DrawTriangleShape extends CustomPainter {
  Paint? painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = Colors.purpleAccent
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    path.close();

    canvas.drawPath(path, painter!);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class Triangle extends StatelessWidget {
  const Triangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Triangle Shape in Flutter App")),
      body: Center(
        child: CustomPaint(
          size: const Size(200, 200),
          painter: DrawTriangleShape(),
        ),
      ),
    );
  }
}
