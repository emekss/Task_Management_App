import 'package:flutter/material.dart';

class ToDoListIcon extends StatelessWidget {
  const ToDoListIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.05,
      width: 37.94,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 156, 44, 243),
            Color.fromARGB(255, 58, 73, 249),
          ])),
      child: Image.asset(
        'assets/images/todolist_icon.png',
      ),
    );
  }
}
