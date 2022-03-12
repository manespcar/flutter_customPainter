import 'package:flutter/material.dart';

class Example3Page extends StatelessWidget {
  const Example3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 3'),
      ),
      body: SizedBox(
        height: screenSize.height * 0.5,
        width: screenSize.width,
        child: CustomPaint(
          painter: Example3CustomPainter(),
        ),
      ),
    );
  }
}

class Example3CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.fill
      ..strokeWidth = 5.0;

    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.2);
    path.lineTo(size.width * 0.2, size.height * 0.2);
    path.lineTo(size.width * 0.2, size.height * 0.4);
    path.lineTo(size.width * 0.4, size.height * 0.4);
    path.lineTo(size.width * 0.4, size.height * 0.6);
    path.lineTo(size.width * 0.6, size.height * 0.6);
    path.lineTo(size.width * 0.6, size.height * 0.8);
    path.lineTo(size.width * 0.8, size.height * 0.8);
    path.lineTo(size.width * 0.8, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
