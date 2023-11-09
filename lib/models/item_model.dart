import 'package:flutter/material.dart';

class ItemModel {
  String name;
  String model;
  double price;
  String imgAddress;
  Color modelColor;

  ItemModel(
      {required this.name,
      required this.model,
      required this.price,
      required this.imgAddress,
      required this.modelColor});
}
