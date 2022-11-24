import 'package:desafio_brisanet/widgets/filter_type/filter_type.dart';
import 'package:flutter/material.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const FilterType(),
          Center(
            child: Text('See All'),
          )
        ],
      ),
    );
  }
}


// https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json

      /* ontap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    id: posts.id.toString(),
                    userId: posts.userId.toString(),
                    title: posts.title,
                    body: posts.body,
                  ),
                ),
              ), */