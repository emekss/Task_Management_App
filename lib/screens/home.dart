import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/nav_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 245, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded),
        ),
        actions: [
          Image.asset('assets/images/account_circle.png'),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Rohan!',
              style: GoogleFonts.poppins(
                fontSize: 36.02,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 46, 58, 89),
              ),
            ),
            Text(
              'Have a nice day.',
              style: GoogleFonts.poppins(
                fontSize: 18.01,
                color: const Color.fromARGB(255, 46, 58, 89),
              ),
            ),
            const Row(
              children: [
                NavTab(navTitle: 'My Tasks'),
                NavTab(navTitle: 'In-progress'),
                NavTab(navTitle: 'Completed'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
