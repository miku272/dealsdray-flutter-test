import 'package:flutter/material.dart';

class CategoryBubble extends StatelessWidget {
  final IconData icon;
  final String label;
  final LinearGradient gradient;

  const CategoryBubble({
    required this.icon,
    required this.label,
    this.gradient = const LinearGradient(colors: [Colors.blue, Colors.green]),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: gradient,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 35, color: Colors.white),
        ),
        const SizedBox(height: 5),
        Text(
          label,
        ),
      ],
    );
  }
}
