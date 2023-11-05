import 'package:facebook_ui/facebook_ui/widgets/quick_actions.dart';
import 'package:facebook_ui/facebook_ui/widgets/stories.dart';
import 'package:facebook_ui/models/publication.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/circle_btn.dart';
import 'widgets/what_is_on_your_mind.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    final List<Publication> publications = [];

    for (int i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = reactions.length - 1;

      final publication = Publication(
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imgURL: faker.image.image(),
        commentsCount: random.integer(50000),
        sharesCount: random.integer(50000),
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        userCurrentReaction: reactions[random.integer(reactionIndex)],
      );
      publications.add(publication);
    }
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
