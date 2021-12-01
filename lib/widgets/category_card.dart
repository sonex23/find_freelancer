import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String imgUrl, categoryName;
  final int sum;
  CategoryCard({
    Key? key,
    required this.categoryName,
    required this.sum,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 145,
            height: 106,
            decoration: BoxDecoration(
              color: kPinkCardColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Image.asset(imgUrl),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            categoryName,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$sum $categoryName',
            style: blackTextStyle.copyWith(
              color: kBlackColor.withOpacity(0.5),
              fontSize: 11,
              fontWeight: semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
