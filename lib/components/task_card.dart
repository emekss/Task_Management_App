import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCard extends StatelessWidget {
  final String? project;
  final String? projectTitle;
  final String? date;
  const TaskCard(
      {super.key,
      required this.date,
      required this.project,
      required this.projectTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 325.84,
        width: 328.39,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 156, 44, 243),
                Color.fromARGB(255, 58, 73, 249),
              ],
            ),
            borderRadius: BorderRadius.circular(19.26)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/bulb_icon.png'),
                  const SizedBox(width: 10),
                  Text(
                    project!,
                    style: GoogleFonts.poppins(
                      fontSize: 21.59,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                projectTitle!,
                style: GoogleFonts.poppins(
                  fontSize: 31.78,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                date!,
                style: GoogleFonts.poppins(
                  fontSize: 19.26,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
