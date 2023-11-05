import 'package:flutter/material.dart';

import 'package:facebook_ui/models/publication.dart';

class PublicationItem extends StatelessWidget {
  final Publication piblication;

  const PublicationItem({
    Key? key,
    required this.piblication,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
    );
  }
}
