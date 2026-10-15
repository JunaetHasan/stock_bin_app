import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryProductModel {
  final String image;
  final String title;
  final Color color;
  final Color productColor;

  CategoryProductModel({
    required this.image,
    required this.title,
    required this.color,
    required this.productColor,
  });

  static List<CategoryProductModel> categoryProduct = [
    CategoryProductModel(
      image: 'assets/image/document.png',
      title: 'Categories',
      color: Colors.red,
      productColor: Colors.green,
    ),
    CategoryProductModel(
      image: 'assets/image/document.png',
      title: 'Categories',
      color: Colors.red,
      productColor: Colors.yellow,
    ),
    CategoryProductModel(
      image: 'assets/image/document.png',
      title: 'Categories',
      color: Colors.red,
      productColor: Colors.blue,
    ),
  ];
}
