import 'package:flutter/material.dart';

class Example1Page extends StatelessWidget {
  const Example1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 1'),
      ),
      body: SizedBox(
        height: screenSize.height * 0.5,
        width: screenSize.width,
        child: CustomPaint(
          painter: Example1CustomPainter(),
        ),
      ),
    );
  }
}

class Example1CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.deepOrange
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.5, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
