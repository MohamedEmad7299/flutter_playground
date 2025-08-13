import 'package:flutter/material.dart';
import 'package:flutter_playground/Models/tom_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/assets.dart';

class JerryStore extends StatelessWidget {
  JerryStore({super.key});

  final List<TomItem> tomList = [
    TomItem(
      image: Assets.imagesSportTom,
      title: 'Sport Tom',
      description: 'He runs 1 meter... trips over his boot.',
      price: '3',
      oldPrice: '5',
    ),
    TomItem(
      image: Assets.imagesLoverTom,
      title: 'Tom The Lover',
      description: 'He loves one-sidedly... and is beaten by the other side.',
      price: '5',
      oldPrice: '',
    ),
    TomItem(
      image: Assets.imagesBombTom,
      title: 'Tom the bomb',
      description: 'He blows himself up before Jerry can catch him.',
      price: '10',
      oldPrice: '',
    ),
    TomItem(
      image: Assets.imagesSpyTom,
      title: 'Spy Tom',
      description: 'Disguises itself as a table.',
      price: '12',
      oldPrice: '',
    ),
    TomItem(
      image: Assets.imagesFrozenTom,
      title: 'Frozen Tom',
      description: 'He was chasing Jerry, he froze after the first look.',
      price: '10',
      oldPrice: '',
    ),
    TomItem(
      image: Assets.imagesSleepingTom,
      title: 'Sleeping Tom',
      description: 'He doesn\'t chase anyone, he just snores in stereo.',
      price: '10',
      oldPrice: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF4F6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 34),
              Row(
                children: [
                  Image.asset(
                    'assets/images/jerry_profile.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Text(
                        'Hi, Jerry 👋🏻',
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF1F1F1E),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Which Tom do you want to buy?',
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA5A6A4),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Badge.count(
                    backgroundColor: Color(0xFF03578A),
                    count: 1,
                    textStyle: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0x261F1F1E),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: SvgPicture.asset(
                        Assets.svgsNotification,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 48,
                      child: SearchBar(
                        elevation: WidgetStateProperty.all(0),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.white, width: 1),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                        textStyle: WidgetStateProperty.all(
                          GoogleFonts.ibmPlexSansArabic(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF1F1F1E),
                          ),
                        ),
                        leading: SvgPicture.asset(
                          Assets.svgsSearch,
                          width: 24,
                          height: 24,
                        ),
                        hintText: 'Search about tom ...',
                        onChanged: (value) {
                          // Handle search logic here
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.svgsFilter),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                height: 100,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 92,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF03446A), // Darker blue
                            Color(0xFF0685D0), // Lighter blue
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Positioned(
                      right: -50,
                      top: -30,
                      child: SvgPicture.asset(
                        Assets.svgsEclipse,
                        width: 175,
                        height: 175,
                      ),
                    ),
                    Positioned(
                      right: -1,
                      top: -18,
                      child: Image.asset(
                        Assets.imagesMoneyTom,
                        width: 120,
                        height: 110,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy 1 Tom and get 2 for free",
                            style: GoogleFonts.ibmPlexSansArabic(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Adopt Tom! (Free Fail-Free \nGuarantee)",
                            style: GoogleFonts.ibmPlexSansArabic(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xCCFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Cheap tom section',
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1F1F1E),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF03578A),
                          ),
                        ),
                        const SizedBox(width: 4),
                        SvgPicture.asset(
                          height: 16,
                          width: 16,
                          Assets.svgsArrowRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              GridView.count(
                childAspectRatio: 0.8,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 24,
                children: List.generate(6, (index) {
                  return CartItem(
                    image: tomList[index].image,
                    title: tomList[index].title,
                    description: tomList[index].description,
                    price: tomList[index].price,
                    oldPrice: tomList[index].oldPrice,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final String oldPrice;

  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -18,
            left: 8,
            right: 8,
            child: Column(
              children: [
                Image.asset(image, width: 120, height: 110),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F1F1E),
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFFE9F6FB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        SvgPicture.asset(
                          Assets.svgsMoneyBag,
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 4),
                        if (oldPrice.isNotEmpty)
                          Text(
                            oldPrice,
                            style: GoogleFonts.ibmPlexSansArabic(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF03578A),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        const SizedBox(width: 4),
                        Text(
                          '$price cheeses',
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF03578A),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SvgPicture.asset(Assets.svgsCart, width: 30, height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
