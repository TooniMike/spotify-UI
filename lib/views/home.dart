import 'package:flutter/material.dart';
import 'package:spotify/widgets/song_card.dart';
import '../widgets/album_card.dart';
import '../widgets/button.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double containerHeight = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Good afternoon', 
                    style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(width: 20,),
                   const  Row(
                      children: [
                        Icon(Icons.notification_add_outlined),
                        SizedBox(width: 25,),
                        Icon(Icons.history),
                        SizedBox(width: 25,),
                        Icon(Icons.settings),
                      ],
                      )
                  ],
                ),
                
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 20, top: 20, bottom: 10, right:0),
                child: Row(
                  children: [
                    WidgetButton(text: 'Music'),
                    SizedBox(width: 10,),
                WidgetButton(text: 'Podcasts & Show',)
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Row(
                            children: [
                              RowAlbumCard(label: 'Top 50 Global', image: AssetImage('assets/top50.jpg'),),
                              SizedBox(width: 10,),
                              RowAlbumCard(label: 'Playlist 3', image: AssetImage('assets/album12.jpg'),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              RowAlbumCard(label: 'Christian Mix', image: AssetImage('assets/album15.jpg'),),
                              SizedBox(width: 10,),
                              RowAlbumCard(label: 'Moody Mix', image: AssetImage('assets/album13.jpg'),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              RowAlbumCard(label: 'Relax', image: AssetImage('assets/album06.jpg'),),
                              SizedBox(width: 10,),
                              RowAlbumCard(label: 'Liked Songs', image: AssetImage('assets/liked.jpg'),),
                            ],
                          )
                        ],
                      ),
              
              const SizedBox(height: 25,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Recently Played', 
                style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    AlbumCard(label: 'Best Mode', image: AssetImage('assets/album02.jpg'),
                    
                    ),
                    SizedBox(width: 16,),
                    AlbumCard(label: 'Motivation Mix', image: AssetImage('assets/album01.jpg'),
                    
                    ),
                    SizedBox(width: 16,),
                    AlbumCard(label: 'Top 50-Global', image: AssetImage('assets/top50.jpg'),
                    
                    ),
                    SizedBox(width: 16,),
                    AlbumCard(label: 'Gospel hits', image: AssetImage('assets/album09.jpg'),
                    
                    ),
                    SizedBox(width: 16,),
                    AlbumCard(label: 'R&B', image: AssetImage('assets/album07.jpg'),

                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Based on your recent listening',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: 
                    Row(
                      children: [
                      SongCard(image: AssetImage('assets/album01.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album02.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album03.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album04.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album05.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album06.jpg')),
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Your top mixed',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: 
                    Row(
                      children: [
                      SongCard(image: AssetImage('assets/album10.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album11.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album12.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album14.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album15.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album09.jpg')),
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Recommended Radio',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: 
                    Row(
                      children: [
                      SongCard(image: AssetImage('assets/album09.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album10.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album11.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album12.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album13.jpg')),
                      SizedBox(width: 16),
                      SongCard(image: AssetImage('assets/album14.jpg')),
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 16),
              ],
              
              ),
              ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final String label;
  final ImageProvider image;
  const RowAlbumCard({
    super.key, required this.label, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        // width: double.infinity,
        decoration:  BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4)
        ),
        clipBehavior: Clip.antiAlias,
        child: 
        Row(
          children: [
            Image(
              image: image,
              height: 55, 
              width: 55,
              fit: BoxFit.cover,
              ),
              const SizedBox(width: 8,),
              Text(label, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
          ],
        ),
      ),
    );
  }
}

