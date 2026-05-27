import 'package:flutter/material.dart';
import 'package:misus/core/app_pallete.dart';

class AuthGradiantButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const AuthGradiantButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    //container allows us to decoration the button inside
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: const LinearGradient(
          colors: [Pallete.gradient1, Pallete.gradient2],
          begin: Alignment.bottomLeft,
          end: AlignmentGeometry.topRight,
        ),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(395, 55),
          backgroundColor: Pallete.transparentColor,
          shadowColor: Pallete.transparentColor,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
