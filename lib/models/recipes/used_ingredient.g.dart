// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'used_ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsedIngredientImpl _$$UsedIngredientImplFromJson(Map<String, dynamic> json) =>
    _$UsedIngredientImpl(
      aisle: json['aisle'] as String?,
      amount: json['amount'] as int?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      meta: json['meta'] as List<dynamic>?,
      name: json['name'] as String?,
      original: json['original'] as String?,
      originalName: json['originalName'] as String?,
      unit: json['unit'] as String?,
      unitLong: json['unitLong'] as String?,
      unitShort: json['unitShort'] as String?,
    );

Map<String, dynamic> _$$UsedIngredientImplToJson(
        _$UsedIngredientImpl instance) =>
    <String, dynamic>{
      'aisle': instance.aisle,
      'amount': instance.amount,
      'id': instance.id,
      'image': instance.image,
      'meta': instance.meta,
      'name': instance.name,
      'original': instance.original,
      'originalName': instance.originalName,
      'unit': instance.unit,
      'unitLong': instance.unitLong,
      'unitShort': instance.unitShort,
    };
