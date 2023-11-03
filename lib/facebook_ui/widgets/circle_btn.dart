import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  final Color color;
  final IconData icon;
  final bool showBadge;

  CircleBtn({
    Key? key,
    required this.color,
    required this.icon,
    this.showBadge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // A aktura da stack é dada pelo filho
    return Center(
      child: Stack(
        //alignment: Alignment.center, // A algura da stack será dada pelo pai
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          if (showBadge)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 13,
                width: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
