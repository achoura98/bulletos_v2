import 'package:flutter/material.dart';

class UserStat extends StatelessWidget {
  const UserStat({
    super.key,
    required this.text,
    required this.title,
  });
  final String text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
