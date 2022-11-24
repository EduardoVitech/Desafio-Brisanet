import 'package:desafio_brisanet/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonExite extends StatelessWidget {
  final Function()? onPressed;
  const ButtonExite({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: buttonExiteText, width: 1),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(
            Color.fromARGB(255, 250, 248, 248)),
      ),
      child: Row(
        children: const [
          Text(
            'Sair',
            style: TextStyle(
              color: buttonExiteText,
              fontSize: 12,
            ),
          ),
          SizedBox(width: 25),
          Icon(
            Icons.logout,
            textDirection: TextDirection.ltr,
            color: buttonExiteText,
            size: 15,
          ),
        ],
      ),
    );
  }
}
