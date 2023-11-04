import 'package:facebook_ui/models/story.dart';
import 'package:flutter/material.dart';

final _stories = [
  Story(
      bg: 'assets/wallpapers/1.jpeg',
      avatar: 'assets/users/1.jpg',
      username: 'Laura'),
  Story(
      bg: 'assets/wallpapers/2.jpeg',
      avatar: 'assets/users/2.jpg',
      username: 'Laura'),
  Story(
      bg: 'assets/wallpapers/3.jpeg',
      avatar: 'assets/users/3.jpg',
      username: 'Laura'),
  Story(
      bg: 'assets/wallpapers/4.jpeg',
      avatar: 'assets/users/4.jpg',
      username: 'Laura'),
  Story(
      bg: 'assets/wallpapers/5.jpeg',
      avatar: 'assets/users/5.jpg',
      username: 'Laura'),
  Story(
      bg: 'assets/wallpapers/6.jpeg',
      avatar: 'assets/users/6.jpg',
      username: 'Laura'),
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemBuilder: (_, i) {
          final story = _stories[i];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 80,
            height: double.infinity,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
