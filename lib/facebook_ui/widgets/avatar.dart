import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String img;
  const Avatar({
    Key? key,
    required this.size,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size * 0.5),
        child: Image.asset(
          img,
          width: size,
          height: size,
          fit: BoxFit.cover,
        ),
      ),
    );
    // Container(
    //   width: size,
    //   height: size,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     // image: DecorationImage(
    //     //   image: AssetImage(img),
    //     //   fit: BoxFit.contain,
    //     // ),
    //   ),
    //   child: Image.asset(img),
    // );
  }
}
