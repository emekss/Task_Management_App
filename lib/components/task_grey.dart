import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskGrey extends StatelessWidget {
  final String taskName;
  const TaskGrey({super.key, required this.taskName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(58.5)),
      child: Container(
        height: 54,
        width: 118,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(58.5),
        ),
        child: Center(
          child: Text(
            taskName,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
