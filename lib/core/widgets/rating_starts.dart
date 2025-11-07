import 'package:flutter/material.dart';

List<Widget> ratingStars(double rating, double size) {
  return List.generate(5, (index) {
    final starPosition = index + 1;
    if (rating >= starPosition) {
      return Icon(Icons.star, color: Color(0xFFF4A261), size: size);
    } else if (rating >= starPosition - 0.5) {
      return Icon(Icons.star_half, color: Color(0xFFF4A261), size: size);
    }
    return Icon(Icons.star_border, color: Color(0xFFF4A261), size: size);
  });
}