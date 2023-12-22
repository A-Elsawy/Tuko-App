import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';

class ItemDetail extends StatelessWidget {
  final ItemModel itemModel;
  final Color color;
  const ItemDetail({super.key, required this.itemModel, required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      tileColor: color,
      leading: Container(
        color: const Color(0xFFFFF6DC),
        child: itemModel.image == null
            ? const SizedBox()
            : Image.asset(
                itemModel.image!,
                width: 80.0,
              ),
      ),
      title: Text(itemModel.japanese),
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
      subtitle: Text(itemModel.english),
      subtitleTextStyle: const TextStyle(
        fontSize: 18,
      ),
      trailing: IconButton(
        onPressed: () {
          // play sound
          itemModel.playSound();
        },
        icon: const Icon(
          Icons.play_arrow_rounded,
          size: 22,
          color: Colors.white,
        ),
      ),
    );
  }
}
