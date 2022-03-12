import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/example1'),
              child: const Text('Example 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/example2'),
              child: const Text('Example 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/example3'),
              child: const Text('Example 3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/example4'),
              child: const Text('Example 4'),
            ),
          ],
        ),
      ),
    );
  }
}
