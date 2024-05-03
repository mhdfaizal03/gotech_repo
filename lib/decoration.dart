import 'package:flutter/material.dart';

class InitBackground extends StatelessWidget {
  Widget child;
  InitBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple, Colors.orange])),
      child: child,
    );
  }
}
