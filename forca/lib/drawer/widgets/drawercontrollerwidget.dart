import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerControllerWidget extends StatelessWidget {
  const DrawerControllerWidget(
      {super.key,
      this.appBar,
      this.body,
      this.topBody,
      this.leftBody,
      this.drawer});

  final AppBar? appBar;
  final Widget? body;
  final double? topBody;
  final double? leftBody;
  final Drawer? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          (topBody != null || leftBody != null)
              ? Positioned(
                  top: topBody,
                  left: leftBody,
                  child: body ?? Container(),
                )
              : body!,
          DrawerController(
            child: drawer != null ? drawer! : Container(),
            alignment: DrawerAlignment.end,
          ),
        ],
      ),
    );
  }
}
