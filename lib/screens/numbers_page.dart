import 'package:flutter/material.dart';
import 'package:toku/components/item_detail.dart';
import 'package:toku/models/item_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  final List<ItemModel> numbers = const [
    ItemModel(
      sound: 'sounds/numbers/number_one_sound.mp3',
      japanese: 'ichi',
      english: 'one',
      image: 'assets/images/numbers/number_one.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_two_sound.mp3',
      japanese: 'Ni',
      english: 'two',
      image: 'assets/images/numbers/number_two.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_three_sound.mp3',
      japanese: 'San',
      english: 'three',
      image: 'assets/images/numbers/number_three.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_four_sound.mp3',
      japanese: 'Shi',
      english: 'four',
      image: 'assets/images/numbers/number_four.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_five_sound.mp3',
      japanese: 'Go',
      english: 'five',
      image: 'assets/images/numbers/number_five.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_six_sound.mp3',
      japanese: 'Roku',
      english: 'six',
      image: 'assets/images/numbers/number_six.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      japanese: 'Sebun',
      english: 'seven',
      image: 'assets/images/numbers/number_seven.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      japanese: 'hachi',
      english: 'eight',
      image: 'assets/images/numbers/number_eight.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      japanese: 'Kyū',
      english: 'nine',
      image: 'assets/images/numbers/number_nine.png',
    ),
    ItemModel(
      sound: 'sounds/numbers/number_ten_sound.mp3',
      japanese: 'Jū',
      english: 'ten',
      image: 'assets/images/numbers/number_ten.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Numbers'),
      ),

      // body
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ItemDetail(
          itemModel: numbers[index],
          color: const Color(0xFFEF9235),
        ),
        itemCount: numbers.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
          color: Colors.white,
          height: 0.0,
        ),
      ),
    );
  }
}
