// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  Nutrition get nutrition => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    String id,
    String name,
    String brand,
    String imageUrl,
    double rating,
    int reviewCount,
    Nutrition nutrition,
    List<String> tags,
  });

  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? imageUrl = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? nutrition = null,
    Object? tags = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            brand: null == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            reviewCount: null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                      as int,
            nutrition: null == nutrition
                ? _value.nutrition
                : nutrition // ignore: cast_nullable_to_non_nullable
                      as Nutrition,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionCopyWith<$Res> get nutrition {
    return $NutritionCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String brand,
    String imageUrl,
    double rating,
    int reviewCount,
    Nutrition nutrition,
    List<String> tags,
  });

  @override
  $NutritionCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = null,
    Object? imageUrl = null,
    Object? rating = null,
    Object? reviewCount = null,
    Object? nutrition = null,
    Object? tags = null,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        brand: null == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        reviewCount: null == reviewCount
            ? _value.reviewCount
            : reviewCount // ignore: cast_nullable_to_non_nullable
                  as int,
        nutrition: null == nutrition
            ? _value.nutrition
            : nutrition // ignore: cast_nullable_to_non_nullable
                  as Nutrition,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.name,
    required this.brand,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.nutrition,
    required final List<String> tags,
  }) : _tags = tags;

  @override
  final String id;
  @override
  final String name;
  @override
  final String brand;
  @override
  final String imageUrl;
  @override
  final double rating;
  @override
  final int reviewCount;
  @override
  final Nutrition nutrition;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, brand: $brand, imageUrl: $imageUrl, rating: $rating, reviewCount: $reviewCount, nutrition: $nutrition, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    brand,
    imageUrl,
    rating,
    reviewCount,
    nutrition,
    const DeepCollectionEquality().hash(_tags),
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product({
    required final String id,
    required final String name,
    required final String brand,
    required final String imageUrl,
    required final double rating,
    required final int reviewCount,
    required final Nutrition nutrition,
    required final List<String> tags,
  }) = _$ProductImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get brand;
  @override
  String get imageUrl;
  @override
  double get rating;
  @override
  int get reviewCount;
  @override
  Nutrition get nutrition;
  @override
  List<String> get tags;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Nutrition {
  int get kcal => throw _privateConstructorUsedError;
  double get sugarG => throw _privateConstructorUsedError;
  double get sodiumMg => throw _privateConstructorUsedError;
  double get fatG => throw _privateConstructorUsedError;
  double get proteinG => throw _privateConstructorUsedError;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call({
    int kcal,
    double sugarG,
    double sodiumMg,
    double fatG,
    double proteinG,
  });
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kcal = null,
    Object? sugarG = null,
    Object? sodiumMg = null,
    Object? fatG = null,
    Object? proteinG = null,
  }) {
    return _then(
      _value.copyWith(
            kcal: null == kcal
                ? _value.kcal
                : kcal // ignore: cast_nullable_to_non_nullable
                      as int,
            sugarG: null == sugarG
                ? _value.sugarG
                : sugarG // ignore: cast_nullable_to_non_nullable
                      as double,
            sodiumMg: null == sodiumMg
                ? _value.sodiumMg
                : sodiumMg // ignore: cast_nullable_to_non_nullable
                      as double,
            fatG: null == fatG
                ? _value.fatG
                : fatG // ignore: cast_nullable_to_non_nullable
                      as double,
            proteinG: null == proteinG
                ? _value.proteinG
                : proteinG // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NutritionImplCopyWith<$Res>
    implements $NutritionCopyWith<$Res> {
  factory _$$NutritionImplCopyWith(
    _$NutritionImpl value,
    $Res Function(_$NutritionImpl) then,
  ) = __$$NutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int kcal,
    double sugarG,
    double sodiumMg,
    double fatG,
    double proteinG,
  });
}

/// @nodoc
class __$$NutritionImplCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$NutritionImpl>
    implements _$$NutritionImplCopyWith<$Res> {
  __$$NutritionImplCopyWithImpl(
    _$NutritionImpl _value,
    $Res Function(_$NutritionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kcal = null,
    Object? sugarG = null,
    Object? sodiumMg = null,
    Object? fatG = null,
    Object? proteinG = null,
  }) {
    return _then(
      _$NutritionImpl(
        kcal: null == kcal
            ? _value.kcal
            : kcal // ignore: cast_nullable_to_non_nullable
                  as int,
        sugarG: null == sugarG
            ? _value.sugarG
            : sugarG // ignore: cast_nullable_to_non_nullable
                  as double,
        sodiumMg: null == sodiumMg
            ? _value.sodiumMg
            : sodiumMg // ignore: cast_nullable_to_non_nullable
                  as double,
        fatG: null == fatG
            ? _value.fatG
            : fatG // ignore: cast_nullable_to_non_nullable
                  as double,
        proteinG: null == proteinG
            ? _value.proteinG
            : proteinG // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$NutritionImpl implements _Nutrition {
  const _$NutritionImpl({
    required this.kcal,
    required this.sugarG,
    required this.sodiumMg,
    required this.fatG,
    required this.proteinG,
  });

  @override
  final int kcal;
  @override
  final double sugarG;
  @override
  final double sodiumMg;
  @override
  final double fatG;
  @override
  final double proteinG;

  @override
  String toString() {
    return 'Nutrition(kcal: $kcal, sugarG: $sugarG, sodiumMg: $sodiumMg, fatG: $fatG, proteinG: $proteinG)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionImpl &&
            (identical(other.kcal, kcal) || other.kcal == kcal) &&
            (identical(other.sugarG, sugarG) || other.sugarG == sugarG) &&
            (identical(other.sodiumMg, sodiumMg) ||
                other.sodiumMg == sodiumMg) &&
            (identical(other.fatG, fatG) || other.fatG == fatG) &&
            (identical(other.proteinG, proteinG) ||
                other.proteinG == proteinG));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, kcal, sugarG, sodiumMg, fatG, proteinG);

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      __$$NutritionImplCopyWithImpl<_$NutritionImpl>(this, _$identity);
}

abstract class _Nutrition implements Nutrition {
  const factory _Nutrition({
    required final int kcal,
    required final double sugarG,
    required final double sodiumMg,
    required final double fatG,
    required final double proteinG,
  }) = _$NutritionImpl;

  @override
  int get kcal;
  @override
  double get sugarG;
  @override
  double get sodiumMg;
  @override
  double get fatG;
  @override
  double get proteinG;

  /// Create a copy of Nutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutritionImplCopyWith<_$NutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  int get taste => throw _privateConstructorUsedError;
  int get satiety => throw _privateConstructorUsedError;
  int get repurchase => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get dietType =>
      throw _privateConstructorUsedError; // "비건","키토","일반","기타"
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call({
    String id,
    String productId,
    String author,
    double stars,
    int taste,
    int satiety,
    int repurchase,
    String content,
    String? photoUrl,
    String? dietType,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? author = null,
    Object? stars = null,
    Object? taste = null,
    Object? satiety = null,
    Object? repurchase = null,
    Object? content = null,
    Object? photoUrl = freezed,
    Object? dietType = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            productId: null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                      as String,
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as String,
            stars: null == stars
                ? _value.stars
                : stars // ignore: cast_nullable_to_non_nullable
                      as double,
            taste: null == taste
                ? _value.taste
                : taste // ignore: cast_nullable_to_non_nullable
                      as int,
            satiety: null == satiety
                ? _value.satiety
                : satiety // ignore: cast_nullable_to_non_nullable
                      as int,
            repurchase: null == repurchase
                ? _value.repurchase
                : repurchase // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            photoUrl: freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            dietType: freezed == dietType
                ? _value.dietType
                : dietType // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
    _$ReviewImpl value,
    $Res Function(_$ReviewImpl) then,
  ) = __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String productId,
    String author,
    double stars,
    int taste,
    int satiety,
    int repurchase,
    String content,
    String? photoUrl,
    String? dietType,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
    _$ReviewImpl _value,
    $Res Function(_$ReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? author = null,
    Object? stars = null,
    Object? taste = null,
    Object? satiety = null,
    Object? repurchase = null,
    Object? content = null,
    Object? photoUrl = freezed,
    Object? dietType = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$ReviewImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        productId: null == productId
            ? _value.productId
            : productId // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as String,
        stars: null == stars
            ? _value.stars
            : stars // ignore: cast_nullable_to_non_nullable
                  as double,
        taste: null == taste
            ? _value.taste
            : taste // ignore: cast_nullable_to_non_nullable
                  as int,
        satiety: null == satiety
            ? _value.satiety
            : satiety // ignore: cast_nullable_to_non_nullable
                  as int,
        repurchase: null == repurchase
            ? _value.repurchase
            : repurchase // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        photoUrl: freezed == photoUrl
            ? _value.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        dietType: freezed == dietType
            ? _value.dietType
            : dietType // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$ReviewImpl implements _Review {
  const _$ReviewImpl({
    required this.id,
    required this.productId,
    required this.author,
    required this.stars,
    required this.taste,
    required this.satiety,
    required this.repurchase,
    required this.content,
    this.photoUrl,
    this.dietType,
    required this.createdAt,
  });

  @override
  final String id;
  @override
  final String productId;
  @override
  final String author;
  @override
  final double stars;
  @override
  final int taste;
  @override
  final int satiety;
  @override
  final int repurchase;
  @override
  final String content;
  @override
  final String? photoUrl;
  @override
  final String? dietType;
  // "비건","키토","일반","기타"
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Review(id: $id, productId: $productId, author: $author, stars: $stars, taste: $taste, satiety: $satiety, repurchase: $repurchase, content: $content, photoUrl: $photoUrl, dietType: $dietType, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.taste, taste) || other.taste == taste) &&
            (identical(other.satiety, satiety) || other.satiety == satiety) &&
            (identical(other.repurchase, repurchase) ||
                other.repurchase == repurchase) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.dietType, dietType) ||
                other.dietType == dietType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productId,
    author,
    stars,
    taste,
    satiety,
    repurchase,
    content,
    photoUrl,
    dietType,
    createdAt,
  );

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);
}

abstract class _Review implements Review {
  const factory _Review({
    required final String id,
    required final String productId,
    required final String author,
    required final double stars,
    required final int taste,
    required final int satiety,
    required final int repurchase,
    required final String content,
    final String? photoUrl,
    final String? dietType,
    required final DateTime createdAt,
  }) = _$ReviewImpl;

  @override
  String get id;
  @override
  String get productId;
  @override
  String get author;
  @override
  double get stars;
  @override
  int get taste;
  @override
  int get satiety;
  @override
  int get repurchase;
  @override
  String get content;
  @override
  String? get photoUrl;
  @override
  String? get dietType; // "비건","키토","일반","기타"
  @override
  DateTime get createdAt;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
