import 'package:freezed_annotation/freezed_annotation.dart';

part 'missed_ingredient.freezed.dart';
part 'missed_ingredient.g.dart';

@freezed
class MissedIngredient with _$MissedIngredient {
  factory MissedIngredient({
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
  }) = _MissedIngredient;

  factory MissedIngredient.fromJson(Map<String, dynamic> json) =>
      _$MissedIngredientFromJson(json);
}
