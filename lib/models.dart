import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String brand,
    required String imageUrl,
    required double rating,
    required int reviewCount,
    required Nutrition nutrition,
    required List<String> tags, // ["무설탕","저칼로리","키토"]
  }) = _Product;
}

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    required int kcal,
    required double sugarG,
    required double sodiumMg,
    required double fatG,
    required double proteinG,
  }) = _Nutrition;
}

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String productId,
    required String author,
    required double stars,
    required int taste,
    required int satiety,
    required int repurchase,
    required String content,
    String? photoUrl,
    String? dietType, // "비건","키토","일반","기타"
    required DateTime createdAt,
  }) = _Review;
}

final productDummyList = <Product>[
  Product(
    id: 'prod_001',
    name: '제로 콜라',
    brand: '제로잇',
    imageUrl: 'https://picsum.photos/seed/zero-cola/400/400',
    rating: 4.5,
    reviewCount: 128,
    nutrition: Nutrition(
      kcal: 15,
      sugarG: 0,
      sodiumMg: 5,
      fatG: 0,
      proteinG: 0,
    ),
    tags: const ['무설탕', '저칼로리', '제로칼로리'],
  ),
  Product(
    id: 'prod_002',
    name: '프로틴 그래놀라',
    brand: '클린바이트',
    imageUrl: 'https://picsum.photos/seed/protein-granola/400/400',
    rating: 4.2,
    reviewCount: 86,
    nutrition: Nutrition(
      kcal: 210,
      sugarG: 4.5,
      sodiumMg: 120,
      fatG: 6,
      proteinG: 18,
    ),
    tags: const ['고단백', '저설탕', '식사대용'],
  ),
  Product(
    id: 'prod_003',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
  Product(
    id: 'prod_004',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
  Product(
    id: 'prod_005',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
  Product(
    id: 'prod_006',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
  Product(
    id: 'prod_007',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
  Product(
    id: 'prod_008',
    name: '식물성 두유 요거트',
    brand: '그린리브스',
    imageUrl: 'https://picsum.photos/seed/plant-yogurt/400/400',
    rating: 4.8,
    reviewCount: 214,
    nutrition: Nutrition(
      kcal: 95,
      sugarG: 2.3,
      sodiumMg: 40,
      fatG: 3.5,
      proteinG: 8,
    ),
    tags: const ['비건', '프로바이오틱스', '저지방'],
  ),
];

final reviewDummyList = <Review>[
  Review(
    id: 'rev_001',
    productId: 'prod_001',
    author: 'ray_zero',
    stars: 4.5,
    taste: 5,
    satiety: 2,
    repurchase: 5,
    content: '달지 않고 콜라맛이 잘 살아서 탄산이 생각날 때 마시기 좋아요. \n달지 않고 콜라맛이 잘 살아서 탄산이 생각날 때 마시기 좋아요.달지 않고 콜라맛이 잘 살아서 탄산이 생각날 때 마시기 좋아요.',
    photoUrl: 'https://picsum.photos/seed/granola-bowl/600/400',
    dietType: '일반',
    createdAt: DateTime.now().subtract(const Duration(days: 2)),
  ),
  Review(
    id: 'rev_002',
    productId: 'prod_001',
    author: 'healthy_rice',
    stars: 4.0,
    taste: 4,
    satiety: 4,
    repurchase: 3,
    content: '우유에 말아 먹으면 든든해서 아침 대용으로 딱 좋습니다.',
    photoUrl: 'https://picsum.photos/seed/granola-bowl/600/400',
    dietType: '키토',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Review(
    id: 'rev_003',
    productId: 'prod_001',
    author: 'vegan_runner',
    stars: 5.0,
    taste: 5,
    satiety: 3,
    repurchase: 5,
    content: '비건 요거트 중에서 제일 상큼하고 뒷맛이 깔끔해요.',
    photoUrl: 'https://picsum.photos/seed/granola-bowl/600/400',
    dietType: '비건',
    createdAt: DateTime.now().subtract(const Duration(hours: 12)),
  ),
  Review(
    id: 'rev_004',
    productId: 'prod_001',
    author: 'vegan_runner',
    stars: 5.0,
    taste: 5,
    satiety: 3,
    repurchase: 5,
    content: '비건 요거트 중에서 제일 상큼하고 뒷맛이 깔끔해요.',
    photoUrl: 'https://picsum.photos/seed/granola-bowl/600/400',
    dietType: '비건',
    createdAt: DateTime.now().subtract(const Duration(hours: 12)),
  ),
  Review(
    id: 'rev_005',
    productId: 'prod_001',
    author: 'vegan_runner',
    stars: 5.0,
    taste: 5,
    satiety: 3,
    repurchase: 5,
    content: '비건 요거트 중에서 제일 상큼하고 뒷맛이 깔끔해요.',
    photoUrl: 'https://picsum.photos/seed/granola-bowl/600/400',
    dietType: '비건',
    createdAt: DateTime.now().subtract(const Duration(hours: 12)),
  ),
];
