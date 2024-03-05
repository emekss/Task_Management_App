import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/components/nav_tab.dart';
import 'package:task_management_app/components/progress_cont.dart';
import 'package:task_management_app/components/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "project": "Project 0.1",
      "projectTitle": "UI/UX \nDesigning",
      "date": "October 4, 2024",
    },
    {
      "project": "Project 2.0",
      "projectTitle": "Frontend \nDevelopment",
      "date": "August 10, 2024",
    },
    {
      "project": "Project 3.0",
      "projectTitle": "Backend \nDevelopment",
      "date": "May 4, 2024",
    },
  ];
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
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavTab(navTitle: 'My Tasks'),
                NavTab(navTitle: 'In-progress'),
                NavTab(navTitle: 'Completed'),
              ],
            ),
            SizedBox(
              height: 325.84,
              width: 328.39,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => TaskCard(
                  date: splashData[index]['date'],
                  project: splashData[index]['project'],
                  projectTitle: splashData[index]['projectTitle'],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        splashData.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          margin: const EdgeInsets.only(right: 5),
                          height: 6,
                          width: currentPage == index ? 20 : 6,
                          decoration: BoxDecoration(
                            color: currentPage == index
                                ? const Color.fromARGB(255, 156, 44, 243)
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Text(
              'Progress',
              style: GoogleFonts.poppins(
                fontSize: 17.31,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 46, 58, 89),
              ),
            ),
            const ProgressCont(),
          ],
        ),
      ),
    );
  }
}
