import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forca/drawer/widgets/drawerbody_app.dart';
import 'package:forca/drawer/widgets/drawerbodycontent_app.dart';
import 'package:forca/drawer/widgets/drawerheader_app.dart';
import 'package:forca/widgets/circular_image_widget.dart';
import 'package:forca/widgets/drawer_controller_widget.dart';

class DrawerRoute extends StatelessWidget {
  const DrawerRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerControllerWidget(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Jogo da Forca",
        ),
        centerTitle: true,
        actions: const <Widget>[
          Icon(
            Icons.menu,
            size: 40,
          ),
        ],
      ),
      topBody: MediaQuery.of(context).size.height - 105,
      leftBody: MediaQuery.of(context).size.width - 105,
      body: const CircularImageWidget(
        imageProvider: AssetImage('assets/images/splashscreen.png'),
        width: 100,
        height: 100,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeaderApp(),
            DrawerBodyApp(
              child: DrawerBodyContentApp(),
            ),
          ],
        ),
      ),
    );
  }
}
