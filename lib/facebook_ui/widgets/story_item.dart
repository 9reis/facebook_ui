import 'package:flutter/material.dart';

import '../../models/story.dart';
import 'avatar.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
    required this.isFirst,
  }) : super(key: key);

  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 160,
      margin: EdgeInsets.only(
        right: 15,
        left: isFirst ? 20 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Avatar(
                    borderWidth: 3,
                    size: 40,
                    img: story.avatar,
                  ),
                ),
              ],
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
