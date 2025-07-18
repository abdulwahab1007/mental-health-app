import 'package:flutter/material.dart';

class ExcerciseTile extends StatelessWidget {
  const ExcerciseTile({
    super.key,
    required this.iconBackgroundColor,
    required this.icon,
    required this.text,
    required this.subTitle
    });

  final Color iconBackgroundColor;
  final IconData icon;
  final String text;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon and Excercise name 
             Row(
              children: [
                 Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(12.0)
               ),
               child:  Icon(icon,
               color: Colors.white,),
            ),
            const SizedBox(width: 20.0,),
            //Text 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text,
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),),
                const SizedBox(height: 1.0,),
                Text(subTitle,style: TextStyle(color: Colors.grey.shade400),)
              ],
            )
              ],
             ),

             // 3 dots 
             Icon(Icons.more_horiz,color: Colors.grey.shade800,)
          ],
        ),
        
      ),
    );
    // What the fuck Shuold I be doing next ! 
  }
}