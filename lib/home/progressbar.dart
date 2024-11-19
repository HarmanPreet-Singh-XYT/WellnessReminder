import 'package:flutter/material.dart';



class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.current,
    required this.total,
  });

  final int current;
  final int total;

  @override
  Widget build(BuildContext context) {
    double progress = (current / total).clamp(0.0, 1.0); // Ensure progress is between 0 and 1
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(bottom: 5),
      height: 10,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 48, 48, 48),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9 * progress,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}