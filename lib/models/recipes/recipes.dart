import 'package:freezed_annotation/freezed_annotation.dart';

import 'missed_ingredient.dart';
import 'used_ingredient.dart';

part 'recipes.freezed.dart';
part 'recipes.g.dart';

@freezed
class Recipes with _$Recipes {
  factory Recipes({
    int? id,
    String? image,
    String? imageType,
    int? likes,
    int? missedIngredientCount,
    List<MissedIngredient>? missedIngredients,
    String? title,
    List<dynamic>? unusedIngredients,
    int? usedIngredientCount,
    List<UsedIngredient>? usedIngredients,
  }) = _Recipes;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
}
