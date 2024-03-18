import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/nav_tab.dart';
import 'package:task_management_app/components/progress_cont.dart';
import 'package:task_management_app/screens/HomeScreen/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/account_circle.png'),
          ),
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
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavTab(navTitle: 'My Tasks'),
                NavTab(navTitle: 'In-progress'),
                NavTab(navTitle: 'Completed'),
              ],
            ),
            const SplashScreen(),
            Text(
              'Progress',
              style: GoogleFonts.poppins(
                fontSize: 24.96,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 46, 58, 89),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ProgressCont();
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 41,
          selectedItemColor: Colors.purple,
          unselectedItemColor: const Color.fromARGB(255, 216, 222, 243),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: '',
            ),
          ]),
    );
  }
}
