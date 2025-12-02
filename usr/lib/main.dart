import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:couldai_user_app/screens/main_menu_screen.dart';
import 'package:couldai_user_app/screens/game_screen.dart';
import 'package:couldai_user_app/game/galaxy_runner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galaxy Runner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainMenuScreen(),
        '/game': (context) => GameScreen(game: GalaxyRunner()),
      },
    );
  }
}
