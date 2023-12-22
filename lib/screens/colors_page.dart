import 'package:flutter/material.dart';
import 'package:toku/components/item_detail.dart';
import 'package:toku/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<ItemModel> colors = const [
    ItemModel(
      sound: 'sounds/colors/black.wav',
      japanese: 'Burakku',
      english: 'black',
      image: 'assets/images/colors/color_black.png',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      japanese: 'Chairo',
      english: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/dusty yellow.wav',
      japanese: 'Hokori ppoi kiiro',
      english: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      japanese: 'Gurē',
      english: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      japanese: 'Midori',
      english: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      japanese: 'Aka',
      english: 'red',
      image: 'assets/images/colors/color_red.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Colors'),
      ),

      // body
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ItemDetail(
          itemModel: colors[index],
          color: const Color(0xFF79359F),
        ),
        itemCount: colors.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
          color: Colors.white,
          height: 0.0,
        ),
      ),
    );
  }
}
