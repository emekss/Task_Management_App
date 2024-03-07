import 'package:flutter/material.dart';
import 'package:task_management_app/components/task_card.dart';
import 'package:task_management_app/models/splash_data.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        )
      ],
    );
  }
}
