import 'package:flutter/material.dart';
import 'package:toku/components/item_detail.dart';
import 'package:toku/models/item_model.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});

  final List<ItemModel> familyMembers = const [
    // father
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      japanese: '父親',
      english: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),

    // mother
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      japanese: '母親',
      english: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),

    // son
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      japanese: '息子',
      english: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),

    // daughter
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      japanese: '娘',
      english: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),

    // older_brother
    ItemModel(
      sound: 'sounds/family_members/older_brother.wav',
      japanese: '兄',
      english: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),

    // older_sister
    ItemModel(
      sound: 'sounds/family_members/older_sister.wav',
      japanese: '姉',
      english: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),

    // younger_brother
    ItemModel(
      sound: 'sounds/family_members/younger_brother.wav',
      japanese: '弟',
      english: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),

    // younger_sister
    ItemModel(
      sound: 'sounds/family_members/younger_sister.wav',
      japanese: '妹',
      english: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
    ),

    // grandfather
    ItemModel(
      sound: 'sounds/family_members/grandfather.wav',
      japanese: '祖父',
      english: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),

    // grandmother
    ItemModel(
      sound: 'sounds/family_members/grandmother.wav',
      japanese: '祖母',
      english: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Family Members'),
      ),

      // body
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ItemDetail(
          itemModel: familyMembers[index],
          color: const Color(0xFF558B37),
        ),
        itemCount: familyMembers.length,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
          color: Colors.white,
          height: 0.0,
        ),
      ),
    );
  }
}
