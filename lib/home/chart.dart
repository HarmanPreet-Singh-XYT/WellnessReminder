import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Chart extends StatelessWidget {
  const Chart({super.key,required this.percentage});
  final int percentage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 30.0,bottom: 30.0),
      child: CircularPercentIndicator(
        radius: 85.0,
        lineWidth: 12.0,
        percent: percentage/100,
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: Colors.white,
        backgroundColor:const Color.fromARGB(255, 48, 48, 48),
        center:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$percentage%",style:const TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),),
            const Text("Next Break",style: TextStyle(color: Color(0xffA9A9A9),fontSize: 12),),
          ],
        ),
      ),
    );
  }
}