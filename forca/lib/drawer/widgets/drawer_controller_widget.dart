import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerControllerWidget extends StatelessWidget {
  DrawerControllerWidget(
      {super.key,
      required this.appBar,
      this.body,
      this.topBody,
      this.leftBody,
      required this.drawer});

  GlobalKey<DrawerControllerState> drawerKey =
      GlobalKey<DrawerControllerState>();

  final AppBar? appBar;
  final Widget? body;
  final double? topBody;
  final double? leftBody;
  final Drawer drawer;

  void _openDrawer() {
    drawerKey.currentState!.open();
    print("Alterando estado");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: (appBar == null)
                ? AppBar()
                : AppBar(
                    automaticallyImplyLeading:
                        appBar!.automaticallyImplyLeading,
                    title: appBar!.title,
                    centerTitle: appBar!.centerTitle,
                    actions: <Widget>[
                      GestureDetector(
                        child: appBar!.actions![0],
                        onTap: () => _openDrawer(),
                      ),
                    ],
                  ),
          ),
          (topBody != null || leftBody != null)
              ? Positioned(
                  top: topBody,
                  left: leftBody,
                  child: body ?? Container(),
                )
              : body!,
          DrawerController(
            key: drawerKey,
            alignment: DrawerAlignment.end,
            child: drawer != null ? drawer : Container(),
          )
        ],
      ),
    );
  }
}
