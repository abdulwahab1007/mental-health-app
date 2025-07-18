import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  const EmoticonFace({
    super.key,
    required this.emoji,
    required this.text
    });

  final String emoji;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
                  padding: const  EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: BorderRadius.circular(12.0)
                  ),
                  child:   Column(
                    children: [
                      // Emoji 
                        Text(emoji,
                        style: const TextStyle(
                          fontSize: 24
                        ),)
                      
                    ],
                  )
          ),
          const SizedBox(height: 7.0,),
          // Text 
           Text(text,
           style: const TextStyle(color: Colors.white,
           fontSize: 16),)

      ],
    );
  }
}