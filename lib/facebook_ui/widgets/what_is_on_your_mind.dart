import 'package:flutter/material.dart';

import 'avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(
          size: 50,
          img: 'assets/users/My.jpg',
        ),
        SizedBox(width: 20),
        Text(
          "What's on your mind, reis?",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
