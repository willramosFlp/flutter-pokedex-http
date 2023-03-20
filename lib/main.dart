import 'package:flutter/material.dart';
import 'package:flutter_pokedex_http/common/repositories/pokemon_repository.dart';
import 'package:flutter_pokedex_http/features/pokedex/route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex 2K21',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: PokedexRoute(
        repository: PokemonRepository(),
      ),
    );
  }
}
