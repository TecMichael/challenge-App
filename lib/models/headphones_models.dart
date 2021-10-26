import 'package:flutter/material.dart';

class HeadPhones {
  final String image;
  final String price;
  final String name;
  final Color colors;

  HeadPhones(
      {required this.image,
      required this.colors,
      required this.name,
      required this.price});
}

List<HeadPhones> headlist = [
  HeadPhones(image: 'assets/head1.png', colors: const Color(0xfffef8e0), name: 'AirPods Max', price: '\$549'),
  HeadPhones(image: 'assets/head2.png', colors: const Color(0xffd4dbf8), name: '  X-Seven', price: '\$79')
];
