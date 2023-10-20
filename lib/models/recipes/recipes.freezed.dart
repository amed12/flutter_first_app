// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recipes _$RecipesFromJson(Map<String, dynamic> json) {
  return _Recipes.fromJson(json);
}

/// @nodoc
mixin _$Recipes {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipesCopyWith<Recipes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipesCopyWith<$Res> {
  factory $RecipesCopyWith(Recipes value, $Res Function(Recipes) then) =
      _$RecipesCopyWithImpl<$Res, Recipes>;
  @useResult
  $Res call({int? id, String? image, int? likes, String? title});
}

/// @nodoc
class _$RecipesCopyWithImpl<$Res, $Val extends Recipes>
    implements $RecipesCopyWith<$Res> {
  _$RecipesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipesImplCopyWith<$Res> implements $RecipesCopyWith<$Res> {
  factory _$$RecipesImplCopyWith(
          _$RecipesImpl value, $Res Function(_$RecipesImpl) then) =
      __$$RecipesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image, int? likes, String? title});
}

/// @nodoc
class __$$RecipesImplCopyWithImpl<$Res>
    extends _$RecipesCopyWithImpl<$Res, _$RecipesImpl>
    implements _$$RecipesImplCopyWith<$Res> {
  __$$RecipesImplCopyWithImpl(
      _$RecipesImpl _value, $Res Function(_$RecipesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? title = freezed,
  }) {
    return _then(_$RecipesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipesImpl implements _Recipes {
  _$RecipesImpl({this.id, this.image, this.likes, this.title});

  factory _$RecipesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipesImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final int? likes;
  @override
  final String? title;

  @override
  String toString() {
    return 'Recipes(id: $id, image: $image, likes: $likes, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, likes, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipesImplCopyWith<_$RecipesImpl> get copyWith =>
      __$$RecipesImplCopyWithImpl<_$RecipesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipesImplToJson(
      this,
    );
  }
}

abstract class _Recipes implements Recipes {
  factory _Recipes(
      {final int? id,
      final String? image,
      final int? likes,
      final String? title}) = _$RecipesImpl;

  factory _Recipes.fromJson(Map<String, dynamic> json) = _$RecipesImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  int? get likes;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$RecipesImplCopyWith<_$RecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
