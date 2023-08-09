import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  const WidgetButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                    ), 
                    child: Text(text),
                    )
                ],
              );
  }
}