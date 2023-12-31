import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String img;
  final double borderWidth;

  const Avatar({
    Key? key,
    required this.size,
    required this.img,
    this.borderWidth = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fromNetwork = img.startsWith('http://') || img.startsWith('https://');
    final imgProvider = fromNetwork ? CachedNetworkImageProvider(img) : AssetImage(img);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: imgProvider as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
