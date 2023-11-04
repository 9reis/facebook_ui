import 'package:facebook_ui/facebook_ui/widgets/quick_actions.dart';
import 'package:facebook_ui/facebook_ui/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/circle_btn.dart';
import 'widgets/what_is_on_your_mind.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.white,
        elevation: 0, //Remove a sombra do appBar
        leadingWidth: 150,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        actions: [
          CircleBtn(
            color: const Color(0XFFBFBFBF),
            icon: Icons.search,
          ),
          SizedBox(width: 15),
          CircleBtn(
            color: const Color(0XFFFE7574),
            icon: Icons.add_alert,
          ),
          SizedBox(width: 15),
          CircleBtn(
            color: const Color(0XFF7BBAFF),
            icon: Icons.people,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CircleBtn(
            color: const Color(0XFF1C86E4),
            icon: Icons.message,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          WhatIsOnYourMind(),
          SizedBox(height: 30),
          QuickActions(),
          SizedBox(height: 30),
          Stories(),
        ],
      ),
    );
  }
}
