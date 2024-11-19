import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
class Break extends StatelessWidget {
  const Break({super.key,required this.icon, required this.title,required this.time,required this.id,required this.iconColor});
  final String icon;
  final String title;
  final String time;
  final int id;
  final String iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:const EdgeInsets.only(top: 15.0,bottom: 15.0,left: 10,right: 10),
          margin:const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding:const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 48, 48, 48),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child:const Icon(LucideIcons.eye,color: Colors.blue,size: 24,),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,style:const TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                      Text("Coming up in $time",style:const TextStyle(color: Color(0xffA9A9A9),fontSize: 12,fontWeight: FontWeight.w500),),
                    ],
                  ),
                ],
              ),
              TextButton(onPressed: ()=>{print('hey')}, child: const Text("Skip",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600,decoration: TextDecoration.underline,decorationColor: Colors.white,decorationThickness: 1.5),))
            ],
          ),
        )
      ],
    );
  }
}