import 'package:flutter/material.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFbb86c0),
            radius: 16,
            child: const Text(
              'W',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF1DB954),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              '所有',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 37, 37),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              '音樂',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 37, 37, 37),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'Podcast',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}