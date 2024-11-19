import 'package:flutter/material.dart';
import 'progressbar.dart';

class Progress extends StatelessWidget {
  const Progress({super.key,required this.title, required this.currentAmt, required this.totalAmt});
  final String title;
  final int currentAmt;
  final int totalAmt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width*0.88,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style:const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
              Text("$currentAmt/$totalAmt",style:const TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
            ],
          ),
        ),
        const SizedBox(height: 5),
        ProgressBar(current:currentAmt,total:totalAmt)
      ],
    );
  }
}