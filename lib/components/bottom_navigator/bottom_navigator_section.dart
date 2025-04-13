import 'package:flutter/material.dart';
import 'now_playing_bar.dart';
import '../../my_home_page.dart';

class BottomNavigatorSection extends StatefulWidget {
  const BottomNavigatorSection({super.key});

  @override
  State<BottomNavigatorSection> createState() => _BottomNavigatorSectionState();
}

class _BottomNavigatorSectionState extends State<BottomNavigatorSection> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MyHomePage(),
    Center(child: Text('搜尋')),
    Center(child: Text('你的音樂庫')),
    Center(child: Text('Premium')),
    Center(child: Text('建立')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // BottomNavigationBar 高度
            child: const NowPlayingBar(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜尋'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: '你的音樂庫',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium),
            label: 'Premium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '建立',
          ),
        ],
      ),
    );
  }
}
