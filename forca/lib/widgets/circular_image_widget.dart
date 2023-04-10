import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  final ImageProvider imageProvider;
  final double width;
  final double height;

  const CircularImageWidget({
    super.key,
    required this.imageProvider,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 5.0,
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: imageProvider,
        ),
      ),
    );
  }
}
