import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const AuthHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title, style: theme.textTheme.headlineLarge?.copyWith(color:theme.primaryColor, fontWeight: FontWeight.bold),),
        const SizedBox(
          height: 20,
        ),
        Text(subtitle,textAlign: TextAlign.center, style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.normal),),
      ],
    );
  }
}
