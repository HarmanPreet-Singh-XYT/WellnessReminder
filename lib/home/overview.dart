import 'package:flutter/material.dart';
import './progress.dart';
class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 10,right: 10),
        margin:const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
        borderRadius: BorderRadius.circular(10)
      ),
      child:const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Today's Progress",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Progress(title: "Eyes Break", currentAmt: 2, totalAmt: 6),
                        Progress(title: "Eyes Break", currentAmt: 4, totalAmt: 6),
                        Progress(title: "Eyes Break", currentAmt: 6, totalAmt: 6),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}