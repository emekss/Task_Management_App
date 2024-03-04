import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavTab extends StatelessWidget {
  final String navTitle;
  const NavTab({super.key, required this.navTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.6,
      width: 121.68,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(58.5),
      ),
      child: Center(
        child: Text(
          navTitle,
          style: GoogleFonts.poppins(
            color: const Color.fromARGB(255, 46, 58, 89),
            fontSize: 12.48,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
