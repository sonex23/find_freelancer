import 'package:find_freelancer/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailFreelancerPage extends StatelessWidget {
  const DetailFreelancerPage({Key? key}) : super(key: key);

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
                image: AssetImage('assets/bg_detail.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 42,
                  left: defaultMargin,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/feather_arrow-left.png',
                    width: 32,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/profile2.png',
                      height: 130,
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sona Ermando',
                          style: redTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Programmer',
                          style: redTextStyle.copyWith(
                            color: kPrimaryColor.withOpacity(0.7),
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/map-pin.png',
                              width: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              'Aceh',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: medium,
                                color: kBlackColor.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21,
                        ),
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
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultMargin,
                    vertical: 32,
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
                          'Overview',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'From humble startups to software used by billions, I’ve had a blast designing things that people love. At Google, I\'m proudly building the future of Chrome alongside some of the industry\'s greatest innovators.',
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            color: kBlackColor.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Skills',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'UX Design, UI Design, IoT Design, Micro-interaction Design, 3D Illustration',
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            color: kBlackColor.withOpacity(0.5),
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kPinkCardColor,
                                  width: 2,
                                ),
                                color: kPinkCardColor,
                                borderRadius: BorderRadius.circular(
                                  16,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Portofolio',
                                  style: redTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kPinkCardColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(
                                  16,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Clients',
                                  style: redTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                    color: kPrimaryColor.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kPinkCardColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(
                                  16,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Reviews',
                                  style: redTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                    color: kPrimaryColor.withOpacity(0.6),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            'assets/portofolio.png',
                            width: double.infinity,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
