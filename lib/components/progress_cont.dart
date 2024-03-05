import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/todolist_icon.dart';

class ProgressCont extends StatelessWidget {
  const ProgressCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70.16,
        width: 404.05,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.82),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const ToDoListIcon(),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Design Changes',
                        style: GoogleFonts.poppins(
                          fontSize: 17.49,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 46, 58, 89),
                        ),
                      ),
                      Text(
                        '2 Days ago',
                        style: GoogleFonts.poppins(
                          fontSize: 12.86,
                          color: const Color.fromARGB(255, 191, 200, 232),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_vert_rounded)
            ],
          ),
        ),
      ),
    );
  }
}
