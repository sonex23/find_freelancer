import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg_home.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 42,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: pinkTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        cursorColor: kPrimaryColor,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: kSecondaryColor,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 13,
                            horizontal: 8,
                          ),
                          hintText: 'Search Freelancers, Project',
                          hintStyle: pinkTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 8),
                            child: Image.asset(
                              'assets/search.png',
                              width: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kSecondaryColor,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/bi_filter.png',
                          width: 28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cari\nFreelancer',
                      style: whiteTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 36,
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Selesaikan pekerjaan\ndengan talenta\nterbaik di bidangnya',
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 96,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                    vertical: 24,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Paling Banyak Dicari',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
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
                                      child:
                                          Image.asset('assets/programmer.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Programmer',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '256 Programmer',
                                    style: blackTextStyle.copyWith(
                                      color: kBlackColor.withOpacity(0.5),
                                      fontSize: 11,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
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
                                      child: Image.asset('assets/designer.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'UI/UX Designer',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '120 Designer',
                                    style: blackTextStyle.copyWith(
                                      color: kBlackColor.withOpacity(0.5),
                                      fontSize: 11,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
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
                                      child: Image.asset('assets/social.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Sosmed Admin',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '67 Admin',
                                    style: blackTextStyle.copyWith(
                                      color: kBlackColor.withOpacity(0.5),
                                      fontSize: 11,
                                      fontWeight: semiBold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Freelancer',
                              style: blackTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: bold,
                              ),
                            ),
                            Text(
                              'Lihat Semua',
                              style: pinkTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/profile.png',
                                    width: 80,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sona Ermando',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: semiBold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Programmer',
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
                                                '4,9',
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
                                                'Bandung',
                                                style: blackTextStyle.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: medium,
                                                  color: kBlackColor
                                                      .withOpacity(0.5),
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
                                              text: '\$55/',
                                              style: blackTextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: bold,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'hr',
                                                  style:
                                                      blackTextStyle.copyWith(
                                                    color: kBlackColor
                                                        .withOpacity(0.6),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/profile.png',
                                    width: 80,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sona Ermando',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: semiBold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Programmer',
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
                                                '4,9',
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
                                                'Bandung',
                                                style: blackTextStyle.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: medium,
                                                  color: kBlackColor
                                                      .withOpacity(0.5),
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
                                              text: '\$55/',
                                              style: blackTextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: bold,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'hr',
                                                  style:
                                                      blackTextStyle.copyWith(
                                                    color: kBlackColor
                                                        .withOpacity(0.6),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/profile.png',
                                    width: 80,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sona Ermando',
                                        style: blackTextStyle.copyWith(
                                          fontWeight: semiBold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Programmer',
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
                                                '4,9',
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
                                                'Bandung',
                                                style: blackTextStyle.copyWith(
                                                  fontSize: 10,
                                                  fontWeight: medium,
                                                  color: kBlackColor
                                                      .withOpacity(0.5),
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
                                              text: '\$55/',
                                              style: blackTextStyle.copyWith(
                                                fontSize: 12,
                                                fontWeight: bold,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'hr',
                                                  style:
                                                      blackTextStyle.copyWith(
                                                    color: kBlackColor
                                                        .withOpacity(0.6),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                                              borderRadius:
                                                  BorderRadius.circular(12),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
