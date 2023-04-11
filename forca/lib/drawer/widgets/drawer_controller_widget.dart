import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerControllerWidget extends StatelessWidget {
  const DrawerControllerWidget(
      {super.key,
      required this.appBar,
      this.body,
      this.topBody,
      this.leftBody});

  final AppBar? appBar;
  final Widget? body;
  final double? topBody;
  final double? leftBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: appBar ?? AppBar(),
          ),
          (topBody != null || leftBody != null)
              ? Positioned(
                  top: topBody,
                  left: leftBody,
                  child: body ?? Container(),
                )
              : body!,
        ],
      ),
    );
  }
}
