import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.6,
      width: 133.38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(58.5),
        gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 156, 44, 243),
          Color.fromARGB(255, 58, 73, 249),
        ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
          Text(
            'Add Task',
            style: GoogleFonts.poppins(
              fontSize: 12.8,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
