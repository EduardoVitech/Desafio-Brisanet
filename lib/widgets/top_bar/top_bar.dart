import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final int option;
  final void Function()? onTap;
  TopBar({
    super.key,
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Text(
                  'Favoritos',
                  style: TextStyle(
                    fontWeight: option == 1 ? FontWeight.bold : FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 1,
                  width: 50,
                  color: option == 1 ? Colors.black : Colors.white,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Text(
                  'Procurar',
                  style: TextStyle(
                    fontWeight: option == 2 ? FontWeight.bold : FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 1,
                  width: 50,
                  color: option == 2 ? Colors.black : Colors.white,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Column(
              children: [
                Text(
                  'Favoritos',
                  style: TextStyle(
                    fontWeight: option == 3 ? FontWeight.bold : FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 1,
                  width: 50,
                  color: option == 3 ? Colors.black : Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
