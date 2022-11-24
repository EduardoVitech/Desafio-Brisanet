// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokeStore on _PokeStoreBase, Store {
  Computed<PokemonsModel>? _$pokeAPIComputed;

  @override
  PokemonsModel get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokemonsModel>(() => super.pokeAPI,
              name: '_PokeStoreBase.pokeAPI'))
          .value;

  late final _$_pokeAPIAtom =
      Atom(name: '_PokeStoreBase._pokeAPI', context: context);

  @override
  PokemonsModel get _pokeAPI {
    _$_pokeAPIAtom.reportRead();
    return super._pokeAPI;
  }

  @override
  set _pokeAPI(PokemonsModel value) {
    _$_pokeAPIAtom.reportWrite(value, super._pokeAPI, () {
      super._pokeAPI = value;
    });
  }

  late final _$pokemonsModelAtom =
      Atom(name: '_PokeStoreBase.pokemonsModel', context: context);

  @override
  PokemonsModel get pokemonsModel {
    _$pokemonsModelAtom.reportRead();
    return super.pokemonsModel;
  }

  @override
  set pokemonsModel(PokemonsModel value) {
    _$pokemonsModelAtom.reportWrite(value, super.pokemonsModel, () {
      super.pokemonsModel = value;
    });
  }

  late final _$_PokeStoreBaseActionController =
      ActionController(name: '_PokeStoreBase', context: context);

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeStoreBaseActionController.startAction(
        name: '_PokeStoreBase.fetchPokemonList');
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemonsModel: ${pokemonsModel},
pokeAPI: ${pokeAPI}
    ''';
  }
}
