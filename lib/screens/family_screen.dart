import 'package:flutter/material.dart';
import 'package:lang_app/components/item_widget.dart';
import 'package:lang_app/model/item_model.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  static final List<ItemModel> items = [
    ItemModel(
      jpName: "Hamza",
      enName: "hamza",
      img: "assets/images/family_members/family_father.png",
      sound: "sounds/family_members/daughter.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Family"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            color: Colors.blue,
            item: items[index],
          );
        },
      ),
    );
  }
}
