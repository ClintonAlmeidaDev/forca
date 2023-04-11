import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerControllerWidget extends StatelessWidget {
  const DrawerControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0.0, left: 0.0, right: 0.0, child: AppBar())
        ],
      ),
    );
  }
}
