import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class GalaxyRunner extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF3498DB); // Light blue sky color

  @override
  Future<void> onLoad() async {
    super.onLoad();
    // Load game assets and initialize components here
  }
}
