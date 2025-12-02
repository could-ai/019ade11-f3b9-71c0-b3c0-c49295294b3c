import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_menu_bg.png"), // Placeholder background
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Game Title
              const Text(
                'Galaxy Runner',
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // Instructions Panel (similar to screenshot)
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.symmetric(horizontal: 40.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF00A2E8).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Column(
                  children: [
                    Text(
                      'TRAVEL THE WORLDS, ELIMINATE ALL ENEMIES AND REACH THE EXIT',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'USE JUMP OR DOUBLE-JUMP TO GET OVER THE OBSTACLES ON YOUR JOURNEY',
                       textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Play Button
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/game');
                },
                child: Image.asset(
                  "assets/images/play_button.png", // Placeholder button
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
