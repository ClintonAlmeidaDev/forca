import 'package:flutter/material.dart';
import 'package:forca/widgets/listtile_app_widget.dart';

class DrawerBodyContentApp extends StatelessWidget {
  const DrawerBodyContentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const ListTileTheme(
          contentPadding: EdgeInsets.only(left: 6.0),
          child: ExpansionTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage('assets/images/drawer/base_de_palavras.png'),
            ),
            title: Text(
              "Base de Palavras",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
            onExpansionChanged: null,
            children: <Widget>[
              ListTileAppWidget(
                titleText: 'Novas Palavras',
                subtitleText: 'Vamos inserir palavras?',
              ),
              ListTileAppWidget(
                titleText: 'Palavras existentes',
                subtitleText: 'Vamos ver as que já temos?',
              ),
            ],
          ),
        ),
        _createListTile(
          contentPadding: const EdgeInsets.only(left: 6.0),
          titleText: 'Jogar',
          subtitleText: 'Começar a diversão',
          avatarImage: const AssetImage('assets/images/drawer/jogar.png'),
        ),
        _createListTile(
          contentPadding: const EdgeInsets.only(left: 6.0),
          titleText: 'Score',
          subtitleText: 'Relação dos top 10',
          avatarImage: const AssetImage('assets/images/drawer/top10.png'),
        ),
      ],
    );
  }

  ListTile _createListTile({
    required EdgeInsets contentPadding,
    ImageProvider? avatarImage,
    required String titleText,
    required String subtitleText,
  }) {
    return ListTile(
      contentPadding: contentPadding,
      leading: avatarImage != null
          ? CircleAvatar(backgroundImage: avatarImage)
          : null,
      trailing: Icon(Icons.arrow_forward),
      title: Text(titleText),
      subtitle: Text(subtitleText),
      onTap: () {},
    );
  }
}
