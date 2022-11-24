import 'package:desafio_brisanet/utils/firebase_constants.dart';
import 'package:desafio_brisanet/widgets/button_exite/button_exite.dart';
import 'package:desafio_brisanet/widgets/button_theme/button_theme.dart';
import 'package:flutter/material.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 60,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonThemeLogin(
              onPressed: () {},
            ),
            ButtonExite(
              onPressed: () => authController.signOut(),
            ),
          ],
        ),
      ),
    );
  }
}
