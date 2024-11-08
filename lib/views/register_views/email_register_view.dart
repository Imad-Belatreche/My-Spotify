import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_spotify/constants/regex.dart';

class EmailRegisterView extends StatefulWidget {
  const EmailRegisterView({super.key});

  @override
  State<EmailRegisterView> createState() => _EmailRegisterViewState();
}

class _EmailRegisterViewState extends State<EmailRegisterView> {
  final TextEditingController _emailController = TextEditingController();
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  bool isEmailValid = false;
  bool isFocused = false;
  Color fillColor = const Color(0x60777777);

  @override
  void initState() {
    _focusNode.addListener(
      () {
        setState(() {
          fillColor = _focusNode.hasFocus
              ? const Color(0xFF777777)
              : const Color(0x60777777);
        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  String? _emailValidator(String? email) {
    final regEx = RegExp(emailRegEx);

    log("Validating email: $email");
    log("Regex match: ${regEx.hasMatch(email!)}");

    if (email.isNotEmpty && regEx.hasMatch(email)) {
      setState(() {
        isEmailValid = true;
      });
      log("Email is valid: $isEmailValid");
      return null;
    } else {
      setState(() {
        isEmailValid = false;
      });
      log("Email is valid: $isEmailValid");
      return "Not a valid email";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What's your email?",
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Form(
            key: GlobalKey<FormState>(),
            child: TextFormField(
              key: _formKey,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.white,
              focusNode: _focusNode,
              controller: _emailController,
              validator: _emailValidator,
              onChanged: (value) {
                _formKey.currentState?.validate();
                log("${_formKey.currentState?.validate()}");
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: fillColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                    strokeAlign: 0,
                    style: BorderStyle.none,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "You'll need to confirm this email later.",
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor:
                    !isEmailValid ? const Color(0xFF535353) : Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 13),
              ),
              child: Text(
                "Next",
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w900),
              ),
            ),
          )
        ],
      ),
    );
  }
}
