import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTileAppWidget extends StatelessWidget {
  final EdgeInsets contentPadding;
  final ImageProvider? avatarImage;
  final String titleText;
  final String subtitleText;
  const ListTileAppWidget(
      {super.key,
      this.contentPadding =
          const EdgeInsets.only(left: 54.0, top: 0.0, bottom: 8.0),
      this.avatarImage,
      required this.titleText,
      required this.subtitleText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: contentPadding,
        child: Row(
          children: <Widget>[
            (avatarImage == null)
                ? Container(
                    width: 0,
                  )
                : Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: avatarImage!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(titleText),
                  Text(
                    subtitleText,
                    style: const TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}
