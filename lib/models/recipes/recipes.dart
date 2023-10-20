import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes.freezed.dart';
part 'recipes.g.dart';

@freezed
class Recipes with _$Recipes {
  factory Recipes({
    int? id,
    String? image,
    int? likes,
    String? title,
  }) = _Recipes;

  factory Recipes.fromJson(Map<String, dynamic> json) =>
      _$RecipesFromJson(json);
}
