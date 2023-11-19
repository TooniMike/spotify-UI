import 'package:flutter/material.dart';

class Artists extends StatelessWidget {
  final String name;
  final AssetImage artistImage;
  const Artists({super.key, required this.name, required this.artistImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
          CircleAvatar(
            backgroundImage: artistImage,
            radius: 30,
          ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 5,),
                const Text(
                  'Artist', 
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}