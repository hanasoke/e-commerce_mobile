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
                    children: const [
                      _ColorDot(color: Colors.teal),
                      SizedBox(height: 12),
                      _ColorDot(color: Colors.indigo),
                      SizedBox(height: 12),
                      _ColorDot(color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ===== PRICE + 3D BUTTON =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0A2A66),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'View in 3D',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // ===== CUSTOM OPTIONS =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _OptionItem(icon: Icons.checkroom, label: 'Collar'),
                _OptionItem(icon: Icons.cut, label: 'Sleeves'),
                _OptionItem(icon: Icons.inventory_2, label: 'Pocket'),
                _OptionItem(icon: Icons.view_day, label: 'Placket'),
                _OptionItem(icon: Icons.layers, label: 'Half placket'),
              ],
            ),

            const SizedBox(height: 32),

            // ===== ACTION BUTTONS =====
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0A2A66),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Upload Design',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Call Tailor',
                      style: TextStyle(color: Color.fromARGB(255, 37, 18, 211)),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 32),

            // ===== BOTTOM ACTION =====
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(color: Color.fromARGB(255, 37, 18, 211)),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0A2A66),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Order',
                      style: TextStyle(color: Colors.white),
                    ),
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
