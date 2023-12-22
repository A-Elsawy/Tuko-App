import 'package:flutter/material.dart';
import 'package:toku/components/item_detail.dart';
import 'package:toku/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      japanese: '来ますか？',
      english: 'Are you coming?',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      japanese: '購読することを忘れないでください。',
      english: 'Don\'t forget to subscribe.',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      japanese: 'ご気分はいかがですか？',
      english: 'How are you feeling?',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      japanese: '私はアニメが大好きです。',
      english: 'I love anime.',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      japanese: 'プログラミングが大好きです',
      english: 'I love programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      japanese: 'プログラミングは簡単です',
      english: 'Programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      japanese: 'あなたの名前は何ですか？',
      english: 'What\'s your name?',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      japanese: 'どこに行くの？',
      english: 'Where are you going?',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      japanese: 'はい、来ます。',
      english: 'Yes, I am coming.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Phrases'),
      ),

      // body
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ItemDetail(
          itemModel: phrases[index],
          color: const Color(0xFF50ADC7),
        ),
        itemCount: phrases.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
          color: Colors.white,
          height: 0.0,
        ),
      ),
    );
  }
}
