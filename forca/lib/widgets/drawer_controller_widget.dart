import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerControllerWidget extends StatelessWidget {
  const DrawerControllerWidget(
      {super.key,
      this.appBar,
      this.body,
      required Drawer drawer,
      this.topBody,
      this.leftBody});
  final AppBar? appBar;
  final Widget? body;

  final double? topBody;
  final double? leftBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (topBody != null || leftBody != null)
            ? Positioned(
                top: topBody,
                left: leftBody,
                child: body ?? Container(),
              )
            : body);
  }
}
