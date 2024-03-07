import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/progress_cont.dart';
import 'package:task_management_app/screens/Calender_Screen/calender_cont.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        actions: const [Icon(Icons.search_rounded)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CalenderCont(),
            const SizedBox(height: 20),
            Text(
              'Task',
              style: GoogleFonts.poppins(
                fontSize: 24.96,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return const ProgressCont();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
