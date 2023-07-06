import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.cloud,
              color: Colors.white,
              size: 32,
            ),
            SizedBox(width: 8),
            Text(
              'Weather Application',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF62B6CB),
        elevation: 0,
      );
  }
}