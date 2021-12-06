import 'package:find_freelancer/models/client_model.dart';
import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class ClientItem extends StatelessWidget {
  final ClientModel clientModel;
  const ClientItem({
    Key? key,
    required this.clientModel,
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
                clientModel.imgUrl,
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    clientModel.clientName,
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    clientModel.about,
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
                      Image.asset(
                        'assets/map-pin.png',
                        width: 10,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        clientModel.city,
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: medium,
                          color: kBlackColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      text: '${clientModel.hire}+',
                      style: blackTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: bold,
                      ),
                      children: [
                        TextSpan(
                          text: ' hire',
                          style: blackTextStyle.copyWith(
                            color: kBlackColor.withOpacity(0.6),
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
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
