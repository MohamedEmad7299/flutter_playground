import 'package:flutter/material.dart';
import 'package:flutter_playground/AppColors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/assets.dart';

class TomKitchen extends StatelessWidget {
  const TomKitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dustyBlue,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -200,
                        child: SvgPicture.asset(Assets.svgsEllipse3),
                      ),
                      Positioned(
                        top: 70,
                        left: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.svgsSandwirch,
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'High tension',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.svgsChef,
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Shocking foods',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(top: 200),
                        child: Container(
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEF4F6),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(16),
                              topLeft: Radius.circular(16),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 16),
                                Text(
                                  'Electric Tom pasta',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Color(0xDE1F1F1E),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    Assets.svgsHeart,
                                    width: 32,
                                    height: 32,
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0E5F0),
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
                                      Text(
                                        '5 cheeses',
                                        style: GoogleFonts.ibmPlexSansArabic(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF03578A),
                                        ),
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Pasta cooked with a charger cable and sprinkled with questionable cheese. Make sure to unplug it before eating (or not, you decide).',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Color(0x99121212),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  'Details',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Color(0xDE1F1F1E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Expanded(
                                      child: DetailsItem(
                                        image: Assets.svgsTemperature,
                                        title: '1000 V',
                                        description: 'Temperature ',
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: DetailsItem(
                                        image: Assets.svgsClock,
                                        title: '3 sparks',
                                        description: 'Time ',
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: DetailsItem(
                                        image: Assets.svgsDevil,
                                        title: '1M 12K',
                                        description: 'No. of deaths ',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  'Preparation method',
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Color(0xDE1F1F1E),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Column(
                                  children: [
                                    MethodItem(
                                      number: '1',
                                      title: 'Put the pasta in a toaster.',
                                    ),
                                    const SizedBox(height: 10),
                                    MethodItem(
                                      number: '2',
                                      title: 'Pour battery juice over it.',
                                    ),
                                    const SizedBox(height: 10),
                                    MethodItem(
                                      number: '3',
                                      title: 'Wait for the spark to ignite.',
                                    ),
                                    const SizedBox(height: 10),
                                    MethodItem(
                                      number: '4',
                                      title: 'Serve with an insulating glove.',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16,
                        top: 60,
                        child: Image.asset(
                          Assets.imagesMakaronaa,
                          width: 188,
                          height: 168,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 90,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal:  16, vertical: 16),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF226993),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    'Add to cart',
                    style: GoogleFonts.ibmPlexSansArabic(
                      color: const Color(0xDEFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                 const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: const Color(0x61FFFFFF),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '3 cheeses',
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: const Color(0xDEFFFFFF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '5 cheeses',
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: const Color(0xDEFFFFFF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.white
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const DetailsItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFFD0E5F0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          SvgPicture.asset(image, width: 32, height: 32),
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.ibmPlexSansArabic(
              color: Color(0x99121212),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            description,
            style: GoogleFonts.ibmPlexSansArabic(
              color: Color(0x5E121212),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class MethodItem extends StatelessWidget {
  final String number;
  final String title;

  const MethodItem({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: -8,
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFD0E5F0), width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        number,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: Color(0xFF035587),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Color(0x99121212),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
