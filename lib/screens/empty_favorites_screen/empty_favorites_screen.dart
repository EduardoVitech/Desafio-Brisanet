import 'package:desafio_brisanet/widgets/button_search/button_search.dart';
import 'package:flutter/material.dart';

class EmptyFavorites extends StatelessWidget {
  final void Function()? searchButton;
  const EmptyFavorites({
    super.key,
    required this.searchButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Image.asset(
            'assets/astronauta_vazio.png',
            fit: BoxFit.contain,
            scale: 1,
          ),
          const SizedBox(height: 30),
          const Center(
            child: Text(
              'Está meio vazio por aqui!',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Procure por pokémons para adicioná-',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'los aos seus favoritos.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Center(
            child: ButtonSearch(
              searchButton: searchButton,
            ),
          ),
        ],
      ),
    );
  }
}
