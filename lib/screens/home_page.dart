import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoriesModel = [
      CategoryModel(
        text: 'Numbers',
        color: const Color(0xFFEF9235),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return const NumberPage();
            }),
          );
        },
      ),
      CategoryModel(
        text: 'Family\n Members',
        color: const Color(0xFF558B37),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return const FamilyMemberPage();
            }),
          );
        },
      ),
      CategoryModel(
        text: 'Colors',
        color: const Color(0xFF79359F),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return const ColorsPage();
            }),
          );
        },
      ),
      CategoryModel(
        text: 'Phrases',
        color: const Color(0xFF50ADC7),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return const PhrasesPage();
            }),
          );
        },
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        title: const Text('Toku'),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) =>
      //       Category(categoryModel: categoriesModel[index]),
      //   itemCount: categoriesModel.length,
      // ),
      body: GridView.builder(
        padding: const EdgeInsets.all(15.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
        ),
        itemBuilder: (context, index) =>
            Category(categoryModel: categoriesModel[index]),
        itemCount: categoriesModel.length,
      ),
    );
  }
}
