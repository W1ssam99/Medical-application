import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget child;

  const Responsive({required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(top: 50,right: 18,left: 18), // Adjust the padding as needed
          child: child,
        );
      },
    );
  }
}