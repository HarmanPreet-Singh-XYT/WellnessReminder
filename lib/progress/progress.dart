import 'package:flutter/material.dart';
import 'activitychart.dart';
class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
      child: Center(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Progress",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.45,
                  padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
                  margin:const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Weekly Stretches",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 14,fontWeight: FontWeight.w500),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('29',style:TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                          Text('+8%',style:TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.45,
                  padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
                  margin:const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Weekly Breaks",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 14,fontWeight: FontWeight.w500),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('47',style:TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                          Text('+12%',style:TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child:const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Streak",style:TextStyle(color: Color(0xffA9A9A9),fontSize: 14,fontWeight: FontWeight.w500),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('5 days',style:TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                      Text('+2 days',style:TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600),),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding:const EdgeInsets.only(top: 20.0,bottom: 20.0,left: 15,right: 15),
              margin:const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 48, 48, 48)),
                borderRadius: BorderRadius.circular(10)
              ),
              child:LineChartProgress(),
            ),
          ],
        ),
      ),
    );
  }
}