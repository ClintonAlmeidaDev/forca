import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forca/widgets/listtile_app_widget.dart';

class DrawerBodyContentApp extends StatelessWidget {
  const DrawerBodyContentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTileTheme(
          contentPadding: EdgeInsets.only(left: 6.0),
          child: ExpansionTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/drawer/base_de_palavras.png'),
            ),
            title: Text(
              "Base de Palavras",
              style: TextStyle(color: Colors.black, fontSize: 16.0),
            ),
            onExpansionChanged: null,
            children: <Widget>[
              ListTileAppWidget(
                contentPadding: EdgeInsets.only(left: 62.0),
                titleText: 'Novas Palavras',
                subtitleText: 'Vamos inserir palavras?',
              ),
              ListTileAppWidget(
                contentPadding: EdgeInsets.only(left: 62.0),
                titleText: 'Palavras existentes',
                subtitleText: 'Vamos ver as que já temos?',
              ),
            ],
          ),
        ),
        ListTileAppWidget(
          contentPadding: EdgeInsets.only(left: 6.0),
          titleText: 'Jogar',
          subtitleText: 'Começar a diversão?',
          avatarImage: AssetImage('assets/images/drawer/jogar.jpg'),
        ),
        ListTileAppWidget(
          contentPadding: EdgeInsets.only(left: 6.0),
          titleText: 'Score',
          subtitleText: 'Relação dos top 10?',
          avatarImage: AssetImage('assets/images/drawer/top10.jpg'),
        ),
      ],
    );
  }

  ListTile _createListTile(
      {ImageProvider? avatarImage,
      EdgeInsets? contentPadding,
      String? titleText,
      String? subtitleText}) {
    return ListTile(
      contentPadding: contentPadding,
      leading: avatarImage != null
          ? CircleAvatar(
              backgroundImage: avatarImage,
            )
          : null,
      trailing: Icon(Icons.arrow_forward),
      title: Text(titleText!),
      subtitle: Text(subtitleText!),
      onTap: () {},
    );
  }
}
