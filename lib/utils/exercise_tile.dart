import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int exerciseNumber;
  final Color color;

  const ExerciseTile(
      {super.key,
      this.icon,
      required this.exerciseName,
      required this.exerciseNumber,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          leading: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(12),
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: color, // color
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          title: Text(exerciseName),
          subtitle: Text("${exerciseNumber.toString()} Execise Skils"),
        ),
      ),
    );
  }
}
