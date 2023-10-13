import 'package:freezed_annotation/freezed_annotation.dart';

part 'used_ingredient.freezed.dart';
part 'used_ingredient.g.dart';

@freezed
class UsedIngredient with _$UsedIngredient {
  factory UsedIngredient({
    String? aisle,
    int? amount,
    int? id,
    String? image,
    List<dynamic>? meta,
    String? name,
    String? original,
    String? originalName,
    String? unit,
    String? unitLong,
    String? unitShort,
  }) = _UsedIngredient;

  factory UsedIngredient.fromJson(Map<String, dynamic> json) =>
      _$UsedIngredientFromJson(json);
}
