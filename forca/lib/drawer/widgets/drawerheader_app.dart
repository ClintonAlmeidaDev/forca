import 'package:flutter/material.dart';

class DrawerHeaderApp extends StatelessWidget {
  const DrawerHeaderApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/drawer/drawer_header.png'),
        ),
      ),
      child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        accountName: Text(
          "Clinton de Almeida",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        accountEmail: Text(
          "clinton.almeida10@gmail.com",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundImage:
              AssetImage('assets/images/drawer/avatar_picture.jpg'),
        ),
        otherAccountsPictures: <Widget>[
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/drawer/avatar_picture03.jpg'),
          )
        ],
      ),
    );
  }
}
