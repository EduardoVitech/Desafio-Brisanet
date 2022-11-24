import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final int option;
  final void Function()? onTap1;
  final void Function()? onTap2;
  final void Function()? onTap3;
  TopBar({
    super.key,
    required this.option,
    required this.onTap1,
    required this.onTap2,
    required this.onTap3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: Text(
                    'Favoritos',
                    style: TextStyle(
                      fontWeight:
                          option == 1 ? FontWeight.bold : FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 2,
                  width: 100,
                  color: option == 1 ? Colors.black : null,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onTap2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: Text(
                    'Procurar',
                    style: TextStyle(
                      fontWeight:
                          option == 2 ? FontWeight.bold : FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 2,
                  width: 100,
                  color: option == 2 ? Colors.black : null,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: onTap3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: Text(
                    'Ver todos',
                    style: TextStyle(
                      fontWeight:
                          option == 3 ? FontWeight.bold : FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 2,
                  width: 100,
                  color: option == 3 ? Colors.black : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
