import 'package:flutter/material.dart';

class ButtonSearch extends StatelessWidget {
  final Function()? onPressed;
  const ButtonSearch({
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
            side: const BorderSide(color: Colors.grey, width: 1),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 40,
        ),
        child: Text(
          'Procurar pokémons',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
