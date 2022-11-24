import 'package:desafio_brisanet/models/pokemons_model.dart';
import 'package:desafio_brisanet/stores/poke_stores/poke_stores.dart';
import 'package:desafio_brisanet/widgets/card_pokemon/card_pokemon.dart';
import 'package:desafio_brisanet/widgets/filter_type/filter_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  late PokeStore _pokeStore;
  @override
  void initState() {
    super.initState();
    _pokeStore = PokeStore();
    _pokeStore.fetchPokemonList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const FilterType(),
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
              child: Observer(builder: (context) {
                PokemonsModel pokeModel = _pokeStore.pokemonsModel;
                return GridView.builder(
                  itemCount: pokeModel.pokemon.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    Pokemon pokemon = _pokeStore.getPokemon(index: index);
                    return CardPokemon(
                      icon: Icons.favorite_border,
                      id: pokeModel.pokemon[index].id.toString(),
                      image: pokeModel.pokemon[index].img,
                      name: pokeModel.pokemon[index].name,
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}




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