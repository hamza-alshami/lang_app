import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String jpName;
  final String enName;
  final String img;
  final String sound;

  ItemModel({
    required this.jpName,
    required this.enName,
    required this.img,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
