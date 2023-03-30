import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerBodyApp extends StatelessWidget {
  final Widget child;
  const DrawerBodyApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[100]!, Colors.green[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 1.0],
          ),
        ),
        child: child,
      ),
    );
  }
}
