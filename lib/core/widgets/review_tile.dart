import 'package:flutter/material.dart';
import 'package:zeroeat/models.dart';
import 'package:zeroeat/config/theme.dart';


class reviewTile extends StatelessWidget {
  final Review review;
  final List<Widget> buildRatingStars;

  const reviewTile({required this.review, required this.buildRatingStars});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: zeroEatTheme.colorScheme.secondary,
              radius: 30,
              child: Icon(Icons.person, color: zeroEatTheme.colorScheme.primary, size: 30,),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          review.author,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        const SizedBox(width: 4),
                        Text(
                          review.dietType != null ? '${review.dietType}' : '',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666)
                          )
                        )
                      ],
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...buildRatingStars,
                        const SizedBox(width: 4),
                        Text(
                          '${review.createdAt.year}-${review.createdAt.month}-${review.createdAt.day}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Color(0xFF666666)
                          )
                        )
                      ],
                    )
                  )
                ],
              )
            )
          ],
        ),
        const SizedBox(height: 16,),
        Image.network(
          review.photoUrl ?? '',
          width: 150,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const SizedBox.shrink(),
        ),
        if (review.photoUrl != null) const SizedBox(height: 16,),
        Text(
          review.content,
          style: const TextStyle(
            fontSize: 14,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}