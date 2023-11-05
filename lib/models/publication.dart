class Publication {
  final String title;
  final DateTime createdAt;
  final String imgURL;
  final int commentsCount;
  final int sharesCount;
  final User user;
  final Reaction userCurrentReaction;

  Publication({
    required this.title,
    required this.createdAt,
    required this.imgURL,
    required this.commentsCount,
    required this.sharesCount,
    required this.user,
    required this.userCurrentReaction,
  });
}

class User {
  final String avatar;
  final String username;

  User({
    required this.avatar,
    required this.username,
  });
}

enum Reaction {
  like,
  love,
  laughing,
  sad,
  shocking,
  angry,
}
