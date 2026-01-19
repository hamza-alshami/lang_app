import 'package:flutter/material.dart';
import 'package:lang_app/model/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.color,
    required this.item,
  });
  final Color color;
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.white,
            child: Image.asset(item.img),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.jpName),
                Text(item.enName),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                item.playSound();
              },
            ),
          ),
        ],
      ),
    );
  }
}
