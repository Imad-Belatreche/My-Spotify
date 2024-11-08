import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_spotify/views/register_views/email_register_view.dart';

class RegisterViews extends StatelessWidget {
  const RegisterViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create account",
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: const EmailRegisterView(),
    );
  }
}
