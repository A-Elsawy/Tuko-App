import 'package:flutter/material.dart';

class CategoryModel {
  final String text;
  final Color color;
  final VoidCallback onTap;

  const CategoryModel(
      {required this.text, required this.color, required this.onTap});
}
