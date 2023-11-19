import 'package:flutter/material.dart';

import '../widgets/search_Cat.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SafeArea(
                child: Row(
                  children: [
                    Text('Search', style: TextStyle(fontSize: 25, 
                    fontWeight: FontWeight.w600, 
                    color: Colors.white),
                    ),
                    Spacer(),
                    Icon(Icons.camera_alt_outlined, size: 30,),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        const Icon(Icons.search, color: Colors.black,),
                        const SizedBox(width: 10,),
                        Text('What do you want to listen to?', 
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: const Color.fromARGB(255, 22, 8, 8)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              const Text('Browse all',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)
              ),
              const SizedBox(height: 20,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SearchCategory(color: Colors.red, image: AssetImage('assets/album03.jpg'), text: 'Podcasts',),
                              SizedBox(width: 5,),
                              SearchCategory(color: Colors.blue, image: AssetImage('assets/album01.jpg'), text: 'Live Events',),
                            
                            ],
                          ),
                          
                          const SizedBox(height: 10,),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Colors.green, image: AssetImage('assets/album02.jpg'), text: 'Made For You',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Colors.deepOrange, image: AssetImage('assets/album04.jpg'), text: 'New release',),
                          ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SearchCategory(color: Colors.deepPurpleAccent, image: AssetImage('assets/album05.jpg'), text: 'Afro',),
                            const SizedBox(width: 10,),
                            SearchCategory(color: Colors.yellow.shade700, image: const AssetImage('assets/album11.jpg'), text: 'Hip-Hop',),
                          ],
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Color.fromARGB(255, 2, 1, 56), image: AssetImage('assets/album07.jpg'), text: 'Charts',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Color.fromARGB(255, 2, 25, 156), image: AssetImage('assets/album08.jpg'), text: 'Mood',),
                          ],
                          ),
                          const SizedBox(height: 10,),
        
                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Color.fromARGB(255, 110, 168, 2), image: AssetImage('assets/album10.jpg'), text: 'Christian & Gospel',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Color.fromARGB(255, 3, 65, 116), image: AssetImage('assets/album03.jpg'), text: 'R&B',),
                          ],
                          ),
                          const SizedBox(height: 10,),
        
                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Color.fromARGB(255, 3, 116, 131), image: AssetImage('assets/album01.jpg'), text: 'Fresh Finds',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Colors.blue, image: AssetImage('assets/album15.jpg'), text: 'Discover',),
                          ],
                          ),
                          const SizedBox(height: 10,),

                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Color.fromARGB(255, 77, 3, 46), image: AssetImage('assets/album14.jpg'), text: 'Radio',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Color.fromARGB(255, 122, 5, 103), image: AssetImage('assets/album13.jpg'), text: 'EQUAL',),
                          ],
                          ),
                          const SizedBox(height: 10,),

                          const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SearchCategory(color: Colors.red, image: AssetImage('assets/album12.jpg'), text: 'RADAR',),
                            SizedBox(width: 10,),
                            SearchCategory(color: Colors.blue, image: AssetImage('assets/album11.jpg'), text: 'Trending',),
                          ],
                          ),
                          const SizedBox(height: 10,),
                          
            ],
          ),
        ),
      )
    );
  }
}