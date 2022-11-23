import 'package:desafio_brisanet/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String textButton;
  final void Function()? onTap;

  const ButtonLogin({
    super.key,
    required this.textButton,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(buttonLoginColor),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              textButton,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
