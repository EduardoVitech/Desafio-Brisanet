import 'package:flutter/material.dart';

class ButtonType extends StatelessWidget {
  final void Function()? typeButton;
  final Color backgroundColor;
  final Color borderColor;
  final String typeText;
  const ButtonType({
    super.key,
    required this.typeButton,
    required this.typeText,
    required this.backgroundColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 3.1,
      child: ElevatedButton(
        onPressed: typeButton,
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll<Size>(
            Size.fromWidth(
              MediaQuery.of(context).size.width / 3.1,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: borderColor, width: 1),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(backgroundColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Text(
            typeText,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
