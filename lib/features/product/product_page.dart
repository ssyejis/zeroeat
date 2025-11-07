import 'package:flutter/material.dart';
import 'package:zeroeat/config/routes.dart';
import 'package:zeroeat/features/community/review_page.dart';
import 'package:zeroeat/models.dart';
import 'package:zeroeat/services/dynamic_link_service.dart';
import 'package:zeroeat/core/widgets/review_tile.dart';
import 'package:zeroeat/core/widgets/rating_stars.dart';

import 'package:zeroeat/config/theme.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isFavorite = false;
  late final List<Review> _reviews;
  late final double? _avgTaste;
  late final double? _avgSatiety;
  late final double? _avgRepurchase;

  @override
  void initState() {
    super.initState();
    _reviews = reviewDummyList
        .where((review) => review.productId == widget.product.id)
        .toList();
    _avgTaste = _calculateAverage((review) => review.taste.toDouble());
    _avgSatiety = _calculateAverage((review) => review.satiety.toDouble());
    _avgRepurchase =
        _calculateAverage((review) => review.repurchase.toDouble());
  }

  void _toggleFavorite() {
    setState(() => isFavorite = !isFavorite);
  }

  double? _calculateAverage(double Function(Review) selector) {
    if (_reviews.isEmpty) return null;
    final total =
        _reviews.fold<double>(0, (sum, review) => sum + selector(review));
    return total / _reviews.length;
  }

  String _formatScore(double? score) =>
      score != null ? score.toStringAsFixed(1) : '-';

  @override
  Widget build(BuildContext context) {
    final nutrition = widget.product.nutrition;

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6EC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF6EC),
        elevation: 0,
        title: const Text(
          'ZERO:EAT',
          style: TextStyle(
            color: Color(0xFF3E2F1C),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3E2F1C)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () =>
                  DynamicLinkService.shareProduct(widget.product.id),
              child: const Icon(Icons.share, color: Color(0xFF3E2F1C)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications, color: Color(0xFF3E2F1C)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
        
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: zeroEatTheme.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    widget.product.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.local_cafe,
                      size: 80,
                      color: zeroEatTheme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      '제로 콜라',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ),
                  IconButton(
                    onPressed: _toggleFavorite,
                    icon: Icon(
                      isFavorite ? Icons.favorite: Icons.favorite_border_outlined,
                      color: isFavorite ? const Color.fromARGB(255, 255, 66, 66) : const Color.fromARGB(255, 170, 170, 170)
                    )
                  )
                ],
              ),
              Text(
                widget.product.brand,
                style: TextStyle(fontSize: 14, color: Color(0xFF7B4F2A)),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  ...ratingStars(widget.product.rating, 20),
                  const SizedBox(width: 8),
                  Text(
                    '${widget.product.rating.toStringAsFixed(1)} 리뷰 ${widget.product.reviewCount}개',
                    style: const TextStyle(color: Color(0xFF3E2F1C)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7EFE3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '성분 요약 카드',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3E2F1C),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '칼로리 ${nutrition.kcal}Kcal / 당류 ${nutrition.sugarG}g / 나트륨 ${nutrition.sodiumMg}mg / 지방 ${nutrition.fatG}g / 단백질 ${nutrition.proteinG}g',
                      style: const TextStyle(color: Color(0xFF2F5D50)),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '특징 태그',
                      style: TextStyle(color: Color(0xFF7B4F2A)),
                    ),
                    Wrap(
                      spacing: 8,
                      children: widget.product.tags
                          .map((tag) => Text('#$tag', style: TextStyle(fontSize: 12),))
                          .toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '리뷰 요약',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3E2F1C),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '맛: ${_formatScore(_avgTaste)}',
                    style: const TextStyle(color: Color(0xFF2F5D50)),
                  ),
                  Text(
                    '포만감: ${_formatScore(_avgSatiety)}',
                    style: const TextStyle(color: Color(0xFF2F5D50)),
                  ),
                  Text(
                    '재구매 의사: ${_formatScore(_avgRepurchase)}',
                    style: const TextStyle(color: Color(0xFF2F5D50)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '리뷰',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        
                  const SizedBox(width: 8),
        
                  Text (
                    '${widget.product.reviewCount}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: zeroEatTheme.colorScheme.primary
                    ),
                  ),
        
                  const Spacer(),
        
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) => ReviewPage(product: widget.product)
                      ));
                    },
                    child: const Text('리뷰 전체보기')
                  )
                ],
              ),
        
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (_, index) {
                  final review = _reviews[index];
                  return reviewTile(
                    review: review,
                    buildRatingStars: ratingStars(review.stars, 16),
                  );
                },
                separatorBuilder: (_, __) => const Divider(
                  color: Color.fromARGB(255, 228, 220, 220),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed(ZeroEatRoutes.reviewForm);
          },
          backgroundColor: zeroEatTheme.colorScheme.primary,
          icon: Icon( Icons.edit, color: Colors.white, size: 17,),
          label: const Text(
            '리뷰 작성',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          extendedPadding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
        )
      )
      ,
    );
  }
}
