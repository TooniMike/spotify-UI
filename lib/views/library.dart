import 'package:flutter/material.dart';
import 'package:spotify/widgets/artist.dart';
import '../widgets/button.dart';
import '../widgets/library_card.dart';

class LibraryView extends StatefulWidget {
  const LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/dp.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Your Library',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.add,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                WidgetButton(text: 'Playlist'),
                SizedBox(
                  width: 10,
                ),
                WidgetButton(
                  text: 'Podcasts & Show',
                ),
                SizedBox(
                  width: 10,
                ),
                WidgetButton(text: 'Albums'),
                SizedBox(
                  width: 10,
                ),
                WidgetButton(text: 'Artists'),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.text_rotate_vertical_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Recents'),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.widgets_outlined),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LibraryCard(
                        text: 'Liked Songs',
                        image: AssetImage('assets/liked.jpg'),
                        description: 'Playlist.94 songs',
                        icon: Icons.draw_outlined,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LibraryCard(
                        text: 'Your Episodes',
                        image: AssetImage('assets/logo.png'),
                        description: 'Saved & downloaded episodes',
                        icon: Icons.draw_outlined,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      LibraryCard(
                        text: 'Liked Songs',
                        image: AssetImage('assets/liked.jpg'),
                        description: 'Playlist.94 songs',
                        icon: Icons.draw_outlined,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Justin Bieber',
                          artistImage: AssetImage('assets/bieber.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Jon Bellion',
                          artistImage: AssetImage('assets/jon.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'FOR KING AND COUNTRY',
                          artistImage: AssetImage('assets/king.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Ludovinci',
                          artistImage: AssetImage('assets/ludo.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Sinmidele',
                          artistImage: AssetImage('assets/sinmidele.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Taya Smith',
                          artistImage: AssetImage('assets/taya.jpg')),
                      SizedBox(
                        height: 10,
                      ),
                      Artists(
                          name: 'Thell',
                          artistImage: AssetImage('assets/thell.jpg')),
                      LibraryCard(
                        text: 'Liked Songs',
                        image: AssetImage('assets/album09.jpg'),
                        description: 'Playlist04',
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
