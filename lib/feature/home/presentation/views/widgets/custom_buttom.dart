
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, this.onPressed, required this.text,
  });
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xff6C63FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(14),
          ),
        ),
        onPressed:onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
