import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineLoginButton extends StatelessWidget {
  final Size screenSize;
  final VoidCallback onPressed;
  final String label;
  final Widget icon;
  const MyOutlineLoginButton(
      {super.key,
      required this.screenSize,
      required this.onPressed,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: icon,
      iconAlignment: IconAlignment.start,
      label: Text(
        label,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        fixedSize: Size(
          screenSize.width * 0.9,
          screenSize.height * 0.065,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
