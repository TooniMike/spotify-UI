import 'package:flutter/material.dart';

class SearchCategory extends StatelessWidget {
  final String text;
  final AssetImage image;
  final Color color;

  const SearchCategory({super.key, required this.text, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 5),
                child: Container(
                 height: 90,
                 width: 80,
                  // padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                  // alignment: Alignment.topCenter,
                  child: Text(
                    text, 
                    maxLines: 2,
                    softWrap: true,
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
                ),
              ),
      
              Transform(
                alignment: Alignment.bottomLeft,
                transform: Matrix4.identity()
                  ..rotateX(0.0)
                  ..rotateY(0.0)
                  ..rotateZ(0.2),
                child: Container(
                  height: 90,
                  width: 66,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 10,
                        right: 0.2,
                        child: ClipPath(
                          clipper: SlantedShapeClipper(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                             child: 
                             Image(image: image,
                               width: 60,
                              height: 60,
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}

class SlantedShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width * 0.8, 0); // Move to the top right corner
    path.lineTo(size.width, size.height); // Move to the bottom right corner
    path.lineTo(0, size.height); // Move to the bottom left corner
    path.lineTo(0, size.height * 0.2); // Move to the top left corner
    path.close(); // Close the path to complete the shape
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}