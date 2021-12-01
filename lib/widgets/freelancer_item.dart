import 'package:find_freelancer/models/freelancer_model.dart';
import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class FreelancerItem extends StatelessWidget {
  final FreelancerModel freelancerModel;
  const FreelancerItem({
    Key? key,
    required this.freelancerModel,
  }) : super(key: key);

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
                freelancerModel.imgProfile,
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    freelancerModel.name,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    freelancerModel.role,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                      color: kBlackColor.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/star.png',
                            width: 10,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            freelancerModel.rating.toString(),
                            style: blackTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/map-pin.png',
                            width: 10,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            freelancerModel.city,
                            style: blackTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                              color: kBlackColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          text: '\$${freelancerModel.price}/',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                          children: [
                            TextSpan(
                              text: 'hr',
                              style: blackTextStyle.copyWith(
                                color: kBlackColor.withOpacity(0.6),
                                fontSize: 12,
                                fontWeight: medium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 28,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'HIRE ME',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 90,
                        height: 28,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'PROFILE',
                            style: redTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
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
