import 'package:flutter/material.dart';
import 'package:seekers/pages/backgroundcheck/backgroundcheck_page.dart';
// import 'package:seekers/pages/homepage.dart';
import 'package:provider/provider.dart';
import 'package:seekers/providers/skills_provider.dart';
import 'package:seekers/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SkillProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        home: const BackgroundCheckPage());
  }
}
