import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/color.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextField(
        textInputAction: TextInputAction.next,
        obscureText: _isObscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "*************",
          hintStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkPurplr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.darkPurplr, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
