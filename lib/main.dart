import 'package:flutter/material.dart';

void main() {
  runApp(const HelloKurdistan());
}

class HelloKurdistan extends StatelessWidget {
  const HelloKurdistan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Text("Hello Kurdistan"),
          ),
        ),
      ),
    );
  }
}
