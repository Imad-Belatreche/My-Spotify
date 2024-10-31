import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_spotify/views/start_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartView(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "My Spotify",
          style: GoogleFonts.lato(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            shadows: [
              const Shadow(
                color: Colors.black54,
                blurRadius: 50,
                offset: Offset(-10, 10),
              )
            ],
            fontSize: 43,
          ),
        ),
      ),
    );
  }
}
