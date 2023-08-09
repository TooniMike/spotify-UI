import 'package:flutter/material.dart';
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
  void initState(){
      imageSize = initialSize;
    scrollController = ScrollController()..addListener(() {
      imageSize = initialSize - scrollController.offset * .2;
      if(imageSize < 0) {
        imageSize = 0;
      }
      containerHeight = containerinitialHeight - scrollController.offset;
      if(containerHeight < 0){
        containerHeight = 0;
      }
      imageOpacity = imageSize / initialSize;
      if(scrollController.offset > 224){
        showTopBar = true;
      } else {
        showTopBar = false;
      }
      setState(() {
      });
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
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: imageOpacity.clamp(0, 1.0),
                child: Container (  
                  decoration: 
                  BoxDecoration(
                    boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      offset: const Offset(0, 26),
                      blurRadius: 32,
                      spreadRadius: 16,
                    )
                    
                  ],
                  ),
                  
                  child: 
                  Image(
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
                      ]
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                      SizedBox(height: initialSize + 32),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("This book is dedicated to God Almighty who inspired me and gave me wisdom and knowledge. And, To Lady Olusola Olumeko, my mother in the Lord. I thank God for the day our path crossed since then you had taken me up to nurture spiritually and physically. I will forever be grateful to you. You are indeed a mother. I love You.",
                          style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 8,),
                           const Row(
                            children: [
                              Image(
                                image: AssetImage('assets/logo.png'),
                              
                              width: 32,
                              height: 32,
                              ),
                             SizedBox(width: 16),
                             Text('Spotify'),
                            ],
                          ),
                           const SizedBox(height: 8,),
                          Text(
                            "1,888,132 likes 5h 3m",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 10),
                          const Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.favorite),
                                  SizedBox(width: 16),
                                  Icon(Icons.more_horiz),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                      )
                    ]),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'They were expelled from the Garden because of the sin committed by Eve as she accepted the serpent’s deceit in order to be like God'),
                        const SizedBox(height: 32),
                        Text('You might also like', 
                        style: Theme.of(context).textTheme.titleLarge),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AlbumCard(
                              size: cardSize,
                              image: const AssetImage('assets/album04.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                              AlbumCard(
                                size: cardSize,
                              image: const AssetImage('assets/album02.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AlbumCard(
                              size: cardSize,
                              image: const AssetImage('assets/album12.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                              AlbumCard(
                                size: cardSize,
                              image: const AssetImage('assets/album06.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AlbumCard(
                              size: cardSize,
                              image: const AssetImage('assets/album09.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                              AlbumCard(
                                size: cardSize,
                              image: const AssetImage('assets/album11.jpg'), 
                              label: 'Get Turnt', onTap: (){}),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      
        // App Bar
        Positioned(
          child: 
          Container(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
            color: showTopBar ? 
            const Color(0xFFC61855).withOpacity(1) : Colors.transparent.withOpacity(0),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8
            ),
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
                    child: const Icon(
                      Icons.keyboard_arrow_left, size: 38
                      ),
                    ),
                ),
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 250),
                    opacity: showTopBar ? 1 : 0,
                    child: Text(
                      'Alive', 
                      style: Theme.of(context).textTheme.titleLarge),
                  ),
                    Positioned(
                                  right: 0,
                                  bottom: 
                                  80 -containerHeight.clamp(120.0, double.infinity),
                                  child: 
                                  Stack(
                                    alignment: Alignment.bottomRight,
                                    children: 
                                    [Container(
                                      width: 64,
                                      height: 64,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xff14D860),
                                      ),
                                      child: const Icon(Icons.play_arrow, size: 38),
                                    ),
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: const Icon(
                                        Icons.shuffle, 
                                      color: Colors.black,
                                      size: 14
                                      ),
                                    )
                                  ]
                                ),
                                ),
              ],),
            ),
          ),
        ))
    ),
    ],
    ),
    );
  }
}