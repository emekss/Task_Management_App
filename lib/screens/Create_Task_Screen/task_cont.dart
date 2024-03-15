import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/create_task_button.dart';
import 'package:task_management_app/components/task.dart';

class TaskCont extends StatelessWidget {
  const TaskCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Start Time',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 17.49,
                  ),
                ),
                const SizedBox(width: 50),
                Text(
                  'End time',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 17.49,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '01:22 pm',
                  style: GoogleFonts.poppins(
                    fontSize: 24.96,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 30),
                Text(
                  '03:20 pm',
                  style: GoogleFonts.poppins(
                    fontSize: 24.96,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Divider(),
            Text(
              'Description',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 17.49,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, er adipiscing elit, sed dianummy nibh euismod  dolor sit amet, er adipiscing elit, sed dianummy nibh euismod.',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(),
            Text(
              'Category',
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 17.49,
              ),
            ),
            const Row(
              children: [
                Task(),
              ],
            ),
            SizedBox(
              height: 60,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Task(),
                  );
                },
              ),
            ),
            const CreateTaskButton()
          ],
        ),
      ),
    );
  }
}
