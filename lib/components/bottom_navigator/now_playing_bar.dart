import 'package:flutter/material.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF222222),
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 56,
          child: Row(
            children: [
              Image.network(
                'https://i.scdn.co/image/ab67616d00001e02f29a27af65012ebdd4e59848',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Punchline', style: TextStyle(color: Colors.white)),
                    Text(
                      'Aidan Martin',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.play_arrow, color: Colors.white),
            ],
          ),
        ),
        Container(
          width:
              MediaQuery.of(
                context,
              ).size.width - 24,
          height: 2,
          color: Colors.grey[800],
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: 0.45, // 45% progress
            child: Container(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
