import 'package:flutter/material.dart';
import 'package:forca/drawer/widgets/drawer_controller_widget.dart';

import 'widgets/drawerbody_app.dart';
import 'widgets/drawerbodycontent_app.dart';
import 'widgets/drawerheader_app.dart';

class DrawerRoute extends StatefulWidget {
  const DrawerRoute({Key? key}) : super(key: key);

  @override
  State<DrawerRoute> createState() => _DrawerRouteState();
}

class _DrawerRouteState extends State<DrawerRoute> {
  @override
  Widget build(BuildContext context) {
    return DrawerControllerWidget(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Jogo da Forca'),
        centerTitle: true,
        actions: const <Widget>[
          Icon(
            Icons.menu,
            size: 40,
          )
        ],
      ),
    );
  }
}
