import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify/views/home.dart';
import 'package:spotify/views/library.dart';
import '../views/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index){
          setState(() {
            _selectedTab = index;
          });
        },
      items: const [
        BottomNavigationBarItem(icon: Icon(Ionicons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(AntDesign.search1), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded), label: 'Your Library'),
        
      ]),
      body: Stack(
        children: [
          renderView(0, const HomeView(),),
          renderView(1, const SearchView(),),
          renderView(2, const LibraryView(),),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
          ignoring: _selectedTab != tabIndex,
          child: 
          Opacity(
            opacity: _selectedTab == tabIndex ? 1 : 0,
          child: view,
          ),
        );
  }
}