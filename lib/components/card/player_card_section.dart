import 'package:flutter/material.dart';

class PlayerCardSection extends StatelessWidget {
  const PlayerCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // 專輯圖片
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            child: Image.network(
              'https://i.scdn.co/image/ab67616d00001e025aac795808fc6b6d229c363b',
              width: 135,
              height: 135,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 31, 31, 31),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              height: 135, // 與左邊 ClipRRect 一樣高
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '單曲',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const Text(
                    'Azizam',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'The brand new single fro...',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  // 播放按鈕區
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 31, 31, 31),
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                          ),
                          const Icon(Icons.add, color: Colors.grey, size: 18),
                        ],
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.play_circle_fill,
                        color: Colors.white,
                        size: 32,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

