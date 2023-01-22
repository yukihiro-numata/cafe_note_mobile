import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingFormField extends StatelessWidget {
  static const minRating = 0.0;
  static const ratingCount = 5;
  static const ratingIcon = Icons.star;
  static const ratingColor = Colors.amber;

  final double initialRating;
  final Function(double) onRatingUpdate;

  const RatingFormField({
    Key? key,
    required this.initialRating,
    required this.onRatingUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: minRating,
      itemCount: ratingCount,
      itemBuilder: (context, _) => const Icon(
        ratingIcon,
        color: ratingColor,
      ),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
