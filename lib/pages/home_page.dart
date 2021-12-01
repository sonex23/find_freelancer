import 'package:find_freelancer/models/freelancer_model.dart';
import 'package:find_freelancer/shared/theme.dart';
import 'package:find_freelancer/widgets/category_card.dart';
import 'package:find_freelancer/widgets/freelancer_item.dart';
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
                  padding: const EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 24,
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
                            children: const [
                              CategoryCard(
                                categoryName: 'Programmer',
                                sum: 256,
                                imgUrl: 'assets/programmer.png',
                              ),
                              CategoryCard(
                                categoryName: 'Designer',
                                sum: 152,
                                imgUrl: 'assets/designer.png',
                              ),
                              CategoryCard(
                                categoryName: 'Admin',
                                sum: 67,
                                imgUrl: 'assets/social.png',
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
                              style: redTextStyle.copyWith(
                                fontWeight: semiBold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        FreelancerItem(
                          freelancerModel: FreelancerModel(
                            id: '1',
                            name: 'Sona Ermando',
                            role: 'Programmer',
                            imgProfile: 'assets/profile.png',
                            rating: 4.9,
                            city: 'Aceh',
                            price: 50,
                          ),
                        ),
                        FreelancerItem(
                          freelancerModel: FreelancerModel(
                            id: '2',
                            name: 'Imelda Elvanni',
                            role: 'Programmer',
                            imgProfile: 'assets/profile.png',
                            rating: 5.0,
                            city: 'Gerenggam City',
                            price: 40,
                          ),
                        ),
                        FreelancerItem(
                          freelancerModel: FreelancerModel(
                            id: '3',
                            name: 'Wahyu Nur Fadhilla',
                            role: 'Programmer',
                            imgProfile: 'assets/profile.png',
                            rating: 4.8,
                            city: 'Medan',
                            price: 55,
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
