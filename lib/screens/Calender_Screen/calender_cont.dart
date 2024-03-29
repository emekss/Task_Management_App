import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/add_task_button.dart';

class CalenderCont extends StatelessWidget {
  const CalenderCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 235.33,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.6), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Oct, 2020',
                    style: GoogleFonts.poppins(
                      fontSize: 36.02,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 46, 58, 89),
                    ),
                  ),
                  const AddTaskButton()
                ],
              ),
              Image.asset('assets/images/calender.png')
            ],
          ),
        ),
      ),
    );
  }
}
