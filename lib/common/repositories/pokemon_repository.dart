import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dummy/common/consts/api_consts.dart';
import 'package:dummy/common/error/failure.dart';
import 'package:dummy/common/models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements IPokemonRepository {

  PokemonRepository();
  @override
  Future<List<Pokemon>> getAllPokemons() async {
    try {
      final response = await http
      .get(Uri.parse('https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final list = json['pokemon'] as List<dynamic>;
      return list.map((e) => Pokemon.fromMap(e)).toList();
    } catch (e) {
      throw Failure(message: 'Não foi possível carregar os dados');
    }
  }
}
