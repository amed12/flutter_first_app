// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesImpl _$$RecipesImplFromJson(Map<String, dynamic> json) =>
    _$RecipesImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      imageType: json['imageType'] as String?,
      likes: json['likes'] as int?,
      missedIngredientCount: json['missedIngredientCount'] as int?,
      missedIngredients: (json['missedIngredients'] as List<dynamic>?)
          ?.map((e) => MissedIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      unusedIngredients: json['unusedIngredients'] as List<dynamic>?,
      usedIngredientCount: json['usedIngredientCount'] as int?,
      usedIngredients: (json['usedIngredients'] as List<dynamic>?)
          ?.map((e) => UsedIngredient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecipesImplToJson(_$RecipesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'imageType': instance.imageType,
      'likes': instance.likes,
      'missedIngredientCount': instance.missedIngredientCount,
      'missedIngredients': instance.missedIngredients,
      'title': instance.title,
      'unusedIngredients': instance.unusedIngredients,
      'usedIngredientCount': instance.usedIngredientCount,
      'usedIngredients': instance.usedIngredients,
    };
