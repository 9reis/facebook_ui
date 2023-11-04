import 'package:flutter/material.dart';

import 'package:facebook_ui/facebook_ui/widgets/circle_btn.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuickBtn(
          label: 'Gallery',
          color: Color(0XFF92BE87),
          icon: Icons.photo_library_outlined,
        ),
        QuickBtn(
          label: 'Tag Friends',
          color: Color(0XFF2880D4),
          icon: Icons.people_rounded,
        ),
        QuickBtn(
          label: 'Live',
          color: Color(0XFFFB7171),
          icon: Icons.video_camera_back_rounded,
        ),
      ],
    );
  }
}

class QuickBtn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  QuickBtn({
    Key? key,
    required this.icon,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CircleBtn(
            color: color.withOpacity(0.7),
            icon: icon,
          ),
          const SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
