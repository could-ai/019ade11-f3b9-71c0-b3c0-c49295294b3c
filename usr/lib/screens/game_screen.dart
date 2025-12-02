import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:couldai_user_app/game/galaxy_runner.dart';

class GameScreen extends StatelessWidget {
  final GalaxyRunner game;
  const GameScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: game,
        overlayBuilderMap: {
          'Hud': (context, game) {
            return const Hud();
          },
        },
        initialActiveOverlays: const ['Hud'],
      ),
    );
  }
}

class Hud extends StatelessWidget {
  const Hud({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          // Top HUD
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Hearts and Score
                Row(
                  children: [
                    const Icon(Icons.favorite, color: Colors.red, size: 30),
                    const Icon(Icons.favorite, color: Colors.red, size: 30),
                    const Icon(Icons.favorite_border, color: Colors.red, size: 30),
                    const SizedBox(width: 20),
                    Image.asset("assets/images/coin.png", width: 24), // Placeholder coin
                    const SizedBox(width: 5),
                    const Text(
                      '180',
                      style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // Stage
                const Text(
                  'STAGE - 1',
                  style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                // Pause Button
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                  onPressed: () {
                    // Pause game logic here
                  },
                ),
              ],
            ),
          ),
          // Bottom Controls
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left/Right Buttons
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 40),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 40),
                      onPressed: () {},
                    ),
                  ],
                ),
                // Jump/Action Buttons
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_upward, color: Colors.white, size: 50),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 10),
                     IconButton(
                      icon: const Icon(Icons.flash_on, color: Colors.white, size: 50),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
