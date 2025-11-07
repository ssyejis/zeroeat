import 'package:flutter/material.dart';
import 'package:zeroeat/models.dart';
import 'package:zeroeat/core/widgets/review_tile.dart';
import 'package:zeroeat/core/widgets/rating_stars.dart';

import 'package:zeroeat/config/theme.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key, required this.product});

  final Product product;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  late final List<Review> _reviews;

  void _showImageGallery(List<String> urls) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color(0xFFFDF6EC),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '리뷰 사진 전체보기',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: urls.length,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    urls[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _reviews = reviewDummyList
      .where((review) => review.productId == widget.product.id)
      .toList();
  }

  @override
  Widget build(BuildContext context) {
    final imageUrls = _reviews
        .map((review) => review.photoUrl)
        .whereType<String>()
        .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFFDF6EC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF6EC),
        title: const Text(
          '제품 리뷰',
          style: TextStyle(
            color: Color(0xFF3E2F1C),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3E2F1C)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...ratingStars(widget.product.rating, 16),
                  const SizedBox(width: 8),
                  Text(
                    '${widget.product.rating.toStringAsFixed(1)}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...imageUrls
                      .take(3)
                      .map((image) => Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            image,
                            width: 180,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                      if (imageUrls.length > 3)
                        SizedBox(
                          width: 180,
                          height: 140,
                          child: OutlinedButton(
                            onPressed: () => _showImageGallery(imageUrls),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 12,
                              ),
                              side: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            ),
                            child: const Text('더보기'),
                          ),
                        )
                  ],
                ),
              ),
              Divider(height: 32, color: const Color(0xFFE4DCDC)),
              const SizedBox(height: 8),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _reviews.length,
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
          )
        )
      ),
      floatingActionButton: SizedBox(
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {},
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
    );
  }
}