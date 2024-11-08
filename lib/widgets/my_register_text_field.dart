import 'package:flutter/material.dart';
import 'package:my_spotify/constants/routes.dart';

class MyRegisterTextField extends StatefulWidget {
  const MyRegisterTextField({
    super.key,
  });

  @override
  State<MyRegisterTextField> createState() => _MyRegisterTextFieldState();
}

class _MyRegisterTextFieldState extends State<MyRegisterTextField> {
  final TextEditingController controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final FocusNode _focusNode = FocusNode();
  Color _fillColor = const Color(0x60777777);

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(
      () {
        setState(() {
          _fillColor = _focusNode.hasFocus
              ? const Color(0xFF777777)
              : const Color(0x60777777);
        });
      },
    );
  }

  String? _emailValidator(String? value) {
    final regExp = RegExp(emailPattern);
    return value!.isNotEmpty && !regExp.hasMatch(value)
        ? "Enter a valid email"
        : null;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      key: formKey,
      builder: (field) {
        return TextFormField(
          validator: _emailValidator,
          controller: controller,
          focusNode: _focusNode,
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            filled: true,
            fillColor: _fillColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      },
    );
  }
}
