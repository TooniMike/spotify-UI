import 'package:flutter/material.dart';

import '../views/album_view.dart';

class LibraryCard extends StatelessWidget {
  final AssetImage image;
  final String text;
  final String description;
  final IconData? icon;
  const LibraryCard({super.key, 
  required this.image, 
  required this.text, 
  required this.description,
  this.icon
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { 
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image,)
            )
            );
            },
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
           Image(image: image,
            width: 60,
            height: 60,
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(icon, size: 15, color: Colors.green,),
                    const SizedBox(width: 5,),
                    Text(
                      description, 
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}