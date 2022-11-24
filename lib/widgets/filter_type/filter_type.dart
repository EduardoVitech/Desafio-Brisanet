import 'package:desafio_brisanet/widgets/button_type/button_type.dart';
import 'package:flutter/material.dart';

class FilterType extends StatelessWidget {
  const FilterType({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        height: 100,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonType(
                  backgroundColor: Colors.white,
                  borderColor: Colors.grey,
                  typeButton: () {},
                  typeText: 'Todos',
                ),
                ButtonType(
                  backgroundColor: Colors.white,
                  borderColor: Colors.grey,
                  typeButton: () {},
                  typeText: ' Fire ',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonType(
                  backgroundColor: Colors.white,
                  borderColor: Colors.grey,
                  typeButton: () {},
                  typeText: 'Eletric',
                ),
                ButtonType(
                  backgroundColor: Colors.white,
                  borderColor: Colors.grey,
                  typeButton: () {},
                  typeText: 'Water',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
