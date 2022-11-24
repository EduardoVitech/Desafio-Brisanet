import 'dart:convert';
import 'package:desafio_brisanet/models/pokemons_model.dart';
import 'package:desafio_brisanet/utils/poke_constants.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'poke_stores.g.dart';

class PokeStore = _PokeStoreBase with _$PokeStore;

abstract class _PokeStoreBase with Store {
  @observable
  late PokemonsModel _pokeAPI;

  @observable
  late PokemonsModel pokemonsModel;

  @computed
  PokemonsModel get pokeAPI => _pokeAPI;

  @action
  fetchPokemonList() {
    pokemonsModel = pokemonsModel;
    print(pokemonsModel);
    loadPokemons().then((pokeList) {
      pokemonsModel = pokeList;
    });
  }

  Pokemon getPokemon({required int index}) {
    return _pokeAPI.pokemon[index];
  }

  Future<PokemonsModel> loadPokemons() async {
    try {
      final response = await http.get(PokeConstants.url);
      var decodeJson = jsonDecode(response.body);
      return PokemonsModel.fromJson(decodeJson);
    } catch (error) {
      print('Erro ao carregar lista');
      return pokemonsModel;
    }
  }
}
