import 'package:flutter/material.dart';
import 'package:catalog_app/models/item_model.dart';

final List categories = [
  'Nike',
  'Adidas',
  'Jordan',
  'Puma',
  'Gucci',
  'Tom Ford',
  'Koio'
];

final List featured = [
  'New',
  'Featured',
  'Upcoming',
];

final List<ItemModel> availableItems = [
  ItemModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130.00,
    imgAddress: "assets/images/nike1.png",
    modelColor: const Color(0xffDE0106),
  ),
  ItemModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190.00,
    imgAddress: "assets/images/nike8.png",
    modelColor: const Color(0xff3F7943),
  ),
  ItemModel(
    name: "NIKE",
    model: "ZOOM",
    price: 160.00,
    imgAddress: "assets/images/nike2.png",
    modelColor: const Color(0xffE66863),
  ),
  ItemModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110.00,
    imgAddress: "assets/images/nike3.png",
    modelColor: const Color(0xffD7D8DC),
  ),
  ItemModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike5.png",
    modelColor: const Color(0xff37376B),
  ),
  ItemModel(
    name: "NIKE",
    model: "ZOOM",
    price: 115.00,
    imgAddress: "assets/images/nike4.png",
    modelColor: const Color(0xffE4E3E8),
  ),
  ItemModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike7.png",
    modelColor: const Color(0xffD68043),
  ),
  ItemModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike6.png",
    modelColor: const Color(0xffE2E3E5),
  ),
];
