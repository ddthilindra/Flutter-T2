import 'dart:convert';

import 'package:recipe_list_app/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "yummly2.p.rapidapi.com",
      "x-rapidapi-host": "b989b24e9amsh7f25fb8cf18bb16p191226jsn7f2722e2a19b",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
