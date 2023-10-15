// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipesImpl _$$RecipesImplFromJson(Map<String, dynamic> json) =>
    _$RecipesImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      title: json['title'] as String?,
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
