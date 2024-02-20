import 'package:flutter/material.dart';

class Shous{
  final int id;
  final String name;
  final String imagePath;
  final String description;
  final int price;
  final Color;
  final bool isFovrite;
  // void Function()? onPressed;

  Shous({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.description,
     required this.price,
     required this.Color,
      required this.isFovrite,
      // required this.onPressed,
  });

}