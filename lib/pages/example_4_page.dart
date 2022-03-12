import 'package:flutter/material.dart';

class Example4Page extends StatelessWidget {
  const Example4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 4'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: screenSize.height * 0.25,
            width: screenSize.width,
            child: CustomPaint(
              painter: Example4CustomPainter1(),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.25,
            width: screenSize.width,
            child: CustomPaint(
              painter: Example4CustomPainter2(),
            ),
          ),
        ],
      ),
    );
  }
}

class Example4CustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.indigoAccent
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.15, size.height, size.width * 0.3, size.height * 0.88);
    path.quadraticBezierTo(size.width * 0.45, size.height * 0.78,
        size.width * 0.6, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.8, size.height, size.width * 0.8, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.15,
        size.width * 0.85, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.8, size.width, size.height * 0.85);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Example4CustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.indigoAccent
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    var path = Path();
    path.moveTo(0, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.2,
        size.width * 0.2, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.3, 0, size.width * 0.48, size.height * 0.33);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.55,
        size.width * 0.75, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.1, size.width, size.height * 0.6);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
