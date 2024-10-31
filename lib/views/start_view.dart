import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_spotify/widgets/my_outline_login_button.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              color: Colors.black,
              height: _screenSize.height,
              width: _screenSize.width,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Image.asset(
              "assets/Quran-img.jpg",
              width: _screenSize.width,
              height: _screenSize.height * 0.6,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, _screenSize.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Center(
                  child: SvgPicture.asset(
                    "assets/Brand/Logo.svg",
                    width: _screenSize.width * 0.13,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    'All your islamic needs\n in a single one place',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFF1ED760),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    fixedSize: Size(
                      _screenSize.width * 0.9,
                      _screenSize.height * 0.065,
                    ),
                  ),
                  child: Text(
                    'Sign up free',
                    style: GoogleFonts.lato(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MyOutlineLoginButton(
                  screenSize: _screenSize,
                  onPressed: () {},
                  label: "Continue with Google",
                  icon: SvgPicture.asset(
                    'assets/Google.svg',
                    alignment: AlignmentDirectional.centerStart,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                MyOutlineLoginButton(
                  screenSize: _screenSize,
                  onPressed: () {},
                  label: "Continue with Facebook",
                  icon: SvgPicture.asset(
                    'assets/facebook.svg',
                    alignment: AlignmentDirectional.centerStart,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Log in",
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}