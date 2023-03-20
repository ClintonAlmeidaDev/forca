import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeRoute extends StatefulWidget {
  const HomeRoute({super.key});

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(children: const <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              'Vamos Jogar?',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
