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
    return Scaffold(
      backgroundColor: Colors.white,

      // APP BAR
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(title, style: const TextStyle(color: Colors.black)),
        centerTitle: true,
      ),

      // ===== BODY =====
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== PRODUCT IMAGE =====
            Stack(
              children: [
                Center(child: Image.asset(image, height: 260)),
                Positioned(
                  right: 0,
                  top: 40,
                  child: Column(
                    children: const [_ColorDot(color: Colors.teal)],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ===== SMALL COMPONENTS =====
class _ColorDot extends StatelessWidget {
  final Color color;
  const _ColorDot({required this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 10, backgroundColor: color);
  }
}

class _OptionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _OptionItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: const Color(0xffF6F7FB),
          child: Icon(icon, size: 20, color: Colors.black),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
