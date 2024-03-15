import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 81,
      width: 395,
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
          'Create Task',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
