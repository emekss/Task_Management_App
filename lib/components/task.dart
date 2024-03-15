import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(58.5)),
      child: Container(
        height: 54,
        width: 111,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 156, 44, 243),
              Color.fromARGB(255, 58, 73, 249),
            ],
          ),
          borderRadius: BorderRadius.circular(58.5),
        ),
        child: Center(
          child: Text(
            'Design',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17.49,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
