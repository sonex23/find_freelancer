import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:find_freelancer/models/client_model.dart';
import 'package:find_freelancer/models/freelancer_model.dart';
import 'package:find_freelancer/models/review_model.dart';
import 'package:find_freelancer/pages/photo_view.dart';
import 'package:find_freelancer/shared/theme.dart';
import 'package:find_freelancer/widgets/client_item.dart';
import 'package:find_freelancer/widgets/review_item.dart';
import 'package:flutter/material.dart';

class DetailFreelancerPage extends StatefulWidget {
  final FreelancerModel freelancer;
  const DetailFreelancerPage({required this.freelancer, Key? key}) : super(key: key);

  @override
  State<DetailFreelancerPage> createState() => _DetailFreelancerPageState();
}

class _DetailFreelancerPageState extends State<DetailFreelancerPage> with TickerProviderStateMixin {
  late PageController _pageViewController;
  late int _page;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(initialPage: 0);
    _page = 0;
  }

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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.freelancer.name,
                            style: redTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.freelancer.role,
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
                                widget.freelancer.city,
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
                          'Mobile App Development, IOS App Development, Cross-Platform app, Web Development',
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
                            _buildButtonTab(
                              index: 0,
                              label: 'Portofolio',
                            ),
                            _buildButtonTab(
                              index: 1,
                              label: 'Clients',
                            ),
                            _buildButtonTab(
                              index: 2,
                              label: 'Reviews',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        ExpandablePageView(
                          controller: _pageViewController,
                          onPageChanged: (page) {
                            setState(() {
                              _page = page;
                            });
                          },
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PhotoViewPage(
                                      'assets/portofolio.png',
                                    ),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(24),
                                child: Image.asset(
                                  'assets/portofolio.png',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                ClientItem(
                                  clientModel: ClientModel(
                                    clientName: 'Crowde',
                                    about: 'Fintech & agriculture technology company',
                                    city: 'Jakarta Selatan',
                                    hire: 20,
                                    imgUrl: 'assets/profile.png',
                                  ),
                                ),
                                ClientItem(
                                  clientModel: ClientModel(
                                    clientName: 'Koinworks',
                                    about: 'Fintech Company',
                                    city: 'Jakarta Selatan',
                                    hire: 40,
                                    imgUrl: 'assets/profile.png',
                                  ),
                                ),
                                ClientItem(
                                  clientModel: ClientModel(
                                    clientName: 'Majoo',
                                    about: 'Fintech & agriculture technology company',
                                    city: 'Jakarta Selatan',
                                    hire: 20,
                                    imgUrl: 'assets/profile.png',
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                ReviewItem(
                                  reviewModel: ReviewModel(
                                    clientName: 'Crowde',
                                    comment: 'Proffesional !',
                                    rating: 5,
                                    imgUrl: 'assets/profile.png',
                                  ),
                                ),
                                ReviewItem(
                                  reviewModel: ReviewModel(
                                    clientName: 'Koinworks',
                                    comment: 'Great Programmer! fast and clean code!',
                                    rating: 5,
                                    imgUrl: 'assets/profile.png',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell _buildButtonTab({
    required int index,
    required String label,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          _page = index;
          _pageViewController.animateToPage(index, duration: const Duration(milliseconds: 250), curve: Curves.ease);
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: _page == index ? kPinkCardColor : null,
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
            label,
            style: redTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: _page == index ? kPrimaryColor : kPrimaryColor.withOpacity(0.6),
            ),
          ),
        ),
      ),
    );
  }
}
