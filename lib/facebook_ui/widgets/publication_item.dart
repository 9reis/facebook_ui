import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'package:facebook_ui/models/publication.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;

class PublicationItem extends StatelessWidget {
  final Publication publication;

  const PublicationItem({
    Key? key,
    required this.publication,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );

    const reactions = Reaction.values;

    String _getEmojiPath(Reaction reaction) {
      switch (reaction) {
        case Reaction.like:
          return 'assets/emojis/like.svg';
        case Reaction.love:
          return 'assets/emojis/love.svg';
        case Reaction.laughing:
          return 'assets/emojis/laughing.svg';
        case Reaction.sad:
          return 'assets/emojis/sad.svg';
        case Reaction.shocking:
          return 'assets/emojis/shocking.svg';
        case Reaction.angry:
          return 'assets/emojis/angry.svg';
      }
    }

    String _formatCount(int value) {
      if (value <= 1000) {
        return value.toString();
      } else {
        return "${(value / 1000).toStringAsFixed(1)}k";
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                const Avatar(
                  size: 38,
                  img: 'assets/users/6.jpg',
                ),
                const SizedBox(width: 10),
                Text(publication.user.username),
                const Spacer(),
                Text(
                  timeago.format(publication.createdAt),
                ),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: publication.imgURL,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: padding.copyWith(top: 15),
            child: Text(publication.title),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      reactions.length,
                      (index) {
                        final reaction = reactions[index];
                        final isActive =
                            reaction == publication.userCurrentReaction;

                        return Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                _getEmojiPath(reaction),
                                height: 25,
                                width: 25,
                              ),
                              SizedBox(height: 3),
                              Icon(
                                Icons.circle,
                                color: isActive
                                    ? Colors.redAccent
                                    : Colors.transparent,
                                size: 5,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                              "${_formatCount(publication.commentsCount)} Comments"),
                          const SizedBox(width: 15),
                          Text(
                              "${_formatCount(publication.sharesCount)} Shares")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
