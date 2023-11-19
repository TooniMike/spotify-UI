// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:spotify/widgets/album_card.dart';

class AlbumView extends StatefulWidget {
  final ImageProvider image;
  const AlbumView({super.key, required this.image});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerinitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset * .2;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerinitialHeight - scrollController.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Color.fromARGB(255, 6, 102, 102),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: const Offset(0, 26),
                          blurRadius: 32,
                          spreadRadius: 16,
                        )
                      ],
                    ),
                    child: Image(
                      image: widget.image,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ])),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(children: [
                        SizedBox(height: initialSize + 32),
                        Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Timeless",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/timeless.jpg'),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 16),
                                    Text('Davido'),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Album . 2023",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                const SizedBox(height: 10),
                                const Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Ionicons.heart),
                                        SizedBox(width: 16),
                                        Icon(Icons.downloading_rounded),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_vert),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ]),
                    ),
                  ),
                  SongList(title: 'OVER DEM',),
                  SongList(title: 'FEEL',),
                  SongList(title: 'IN THE GARDEN',),
                  SongList(title: 'UNAVAILABLE (feat. Musa Keys)',),
                  SongList(title: 'BOP(feat. Dexta Daps)',),
                  SongList(title: 'E PAIN ME',),
                  SongList(title: 'AWAY',),
                  SongList(title: 'KANTE (feat.Fave)',),
                  SongList(title: 'NA MONEY',),
                  SongList(title: 'U(JUJU)(feat.Skepta)',),
                  SongList(title: 'NO COMPETITION',),
                  SongList(title: 'PICASSO',),
                  SongList(title: 'FOR THE ROAD',),
                  SongList(title: 'LCND',),
                  SongList(title: 'Champion Sound',),
                 
                ],
              ),
            ),
          ),

          // App Bar
          Positioned(
              child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            color: showTopBar
                ? const Color.fromARGB(255, 6, 103, 110).withOpacity(1)
                : Colors.transparent.withOpacity(0),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SafeArea(
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.keyboard_arrow_left, size: 38),
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 250),
                  opacity: showTopBar ? 1 : 0,
                  child: const Text('Timeless',
                      style: TextStyle(fontSize: 16)),
                ),
                Positioned(
                  right: 0,
                  bottom:
                      80 - containerHeight.clamp(120.0, double.infinity),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff14D860),
                      ),
                      child: const Icon(Icons.play_arrow, size: 30, color: Colors.black,),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.shuffle,
                          color: Colors.black, size: 14),
                    )
                  ]),
                ),
              ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class SongList extends StatelessWidget {
  final String title;
  const SongList({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
              SizedBox(height: 5),
              Text('Davido', style: TextStyle(fontSize: 12),),
            ],
          ),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
