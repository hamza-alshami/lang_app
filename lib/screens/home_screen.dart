import 'package:flutter/material.dart';
import 'package:lang_app/components/home_screen_widget.dart';
import 'package:lang_app/screens/family_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hamza"),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          HomeScreenWidget(
            name: "Family",
            color: Colors.yellow,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
