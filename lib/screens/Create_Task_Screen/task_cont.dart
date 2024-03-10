import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCont extends StatelessWidget {
  const TaskCont({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 500,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
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
                SizedBox(width: 0),
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
                SizedBox(width: 30),
                Text(
                  '03:20 pm',
                  style: GoogleFonts.poppins(
                    fontSize: 24.96,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Divider(),
            Text('Description'),
            Text(
                'Lorem ipsum dolor sit amet, er adipiscing elit, sed dianummy nibh euismod  dolor sit amet, er adipiscing elit, sed dianummy nibh euismod.'),
            Divider(),
            Text('Category')
          ],
        ),
      ),
    );
  }
}
