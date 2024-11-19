import 'package:flutter/material.dart';
import 'chart.dart';
import 'break.dart';
import 'overview.dart';
class Home extends StatelessWidget {
  const Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    int progress = 5;
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WellnessTimer",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Keep moving, stay healthy",
                      style: TextStyle(color: Color(0xffA9A9A9)),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 28, 28, 28),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 5, bottom: 5),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer, color: Colors.white, size: 14),
                      SizedBox(width: 5),
                      Text(
                        "Streak: 5 days",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Chart(percentage: progress),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Next Breaks",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Break(
              icon: "eye",
              title: "Eyes Break",
              time: "10:00",
              id: 0,
              iconColor: "FF0000",
            ),
            Break(
              icon: "eye",
              title: "Eyes Break",
              time: "10:00",
              id: 0,
              iconColor: "FF0000",
            ),
            Break(
              icon: "eye",
              title: "Eyes Break",
              time: "10:00",
              id: 0,
              iconColor: "FF0000",
            ),
            const SizedBox(height: 20),
            Overview(),
          ],
        ),
      ),
    );
  }
}