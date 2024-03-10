import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/screens/Create_Task_Screen/task_cont.dart';

class CreateTaskScreen extends StatelessWidget {
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create a Task',
          style: GoogleFonts.poppins(
              fontSize: 18.96,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 156, 44, 243),
                Color.fromARGB(255, 58, 73, 249),
              ],
            ),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 156, 44, 243),
                      Color.fromARGB(255, 58, 73, 249),
                    ],
                  ),
                ),
                child: const Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Date',
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const TaskCont(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
