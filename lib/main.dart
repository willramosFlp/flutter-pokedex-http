import 'package:flutter/material.dart';
import 'package:dummy/common/repositories/pokemon_repository.dart';
import 'package:dummy/features/pokedex/route.dart';

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
