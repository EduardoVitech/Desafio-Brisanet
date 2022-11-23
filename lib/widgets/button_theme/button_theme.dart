import 'package:desafio_brisanet/utils/colors.dart';
import 'package:flutter/material.dart';

class ButtonThemeLogin extends StatelessWidget {
  final Function()? onPressed;
  const ButtonThemeLogin({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 35,
      minWidth: 139,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(buttonThemeLoginColor),
        ),
        icon: const Icon(
          Icons.mode_night_sharp,
          color: textThemeLoginColor,
          size: 15,
        ),
        label: const Text(
          'Tema escuro',
          style: TextStyle(
            color: textThemeLoginColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
