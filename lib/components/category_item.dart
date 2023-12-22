import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:toku/models/category_model.dart';

class Category extends StatelessWidget {
  final CategoryModel categoryModel;

  const Category({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      duration: const Duration(milliseconds: 1500),
      child: GestureDetector(
        onTap: categoryModel.onTap,
        child: Container(
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: categoryModel.color,
          ),
          alignment: Alignment.center,
          //padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            categoryModel.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
