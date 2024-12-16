import 'package:flutter/material.dart';

class AppOnProgress extends StatelessWidget {
  const AppOnProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
    );
  }
}
