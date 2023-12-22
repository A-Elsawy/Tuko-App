import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String sound;
  final String? image;
  final String japanese;
  final String english;

  const ItemModel(
      {required this.sound,
      this.image,
      required this.japanese,
      required this.english});

  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
