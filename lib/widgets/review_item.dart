import 'package:find_freelancer/models/review_model.dart';
import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final ReviewModel reviewModel;
  const ReviewItem({
    Key? key,
    required this.reviewModel,
  }) : super(key: key);

  List<Widget> getRating(int rating) {
    List<Widget> listStar = [];
    for (int i = 1; i <= rating; i++) {
      listStar.add(Image.asset(
        'assets/star.png',
        width: 20,
      ));
      listStar.add(const SizedBox(
        width: 5,
      ));
    }

    return listStar;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                reviewModel.imgUrl,
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewModel.clientName,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: getRating(reviewModel.rating),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    reviewModel.comment,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                      color: kBlackColor.withOpacity(0.8),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: kBlackColor.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
