import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String title;
  final double price;

  const DetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
