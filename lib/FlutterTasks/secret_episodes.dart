import 'package:flutter/material.dart';
import 'package:flutter_playground/Models/head_item.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/assets.dart';

class SecretEpisodes extends StatelessWidget {
  SecretEpisodes({super.key});

  final cardData = [
    {
      'image': Assets.imagesNightWalk,
      'title': 'Number 404 - The Cursed Cheese 🧀',
    },
    {'image': Assets.imagesRide, 'title': 'Chase on the moon 🌕'},
  ];
  final headData = [
    HeadItem(
        imagePath: Assets.imagesTomHead,
        backgroundColor: Color(0xFFFCF2C5),
        title: "Tom",
        subtitle: "Failed stalker"),
    HeadItem(
        imagePath: Assets.imagesJerryHead,
        backgroundColor: Color(0xFFFCC5E4),
        title: "Jerry",
        subtitle: "A scammer mouse"),
    HeadItem(
        imagePath: Assets.imagesJuniorHead,
        backgroundColor: Color(0xFFC5E7FC),
        title: "Junior",
        subtitle: "Hungry mouse"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFA3DCFF), Colors.white],
          stops: [0.0, 0.8],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(width: 16),
                Image.asset(Assets.imagesTomwejerry, width: 40, height: 40),
                Spacer(),
                SvgPicture.asset(Assets.svgsHalfCircle, width: 40, height: 40),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deleted episodes of Tom and Jerry!',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xDE1F1F1E),
                          decoration: TextDecoration.none,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Scenes that were canceled for... mysterious (and sometimes embarrassing) reasons.',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          color: Color(0x991F1F1E),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Image.asset(Assets.imagesBigtomwejerry, height: 178, width: 112),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const SizedBox(width: 16),
                Text(
                  'Most watched',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xDE1F1F1E),
                    decoration: TextDecoration.none,
                  ),
                ),
                const Spacer(),
                Text(
                  'View All',
                  style: GoogleFonts.roboto(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF03578A),
                  ),
                ),
                const SizedBox(width: 4),
                SvgPicture.asset(height: 16, width: 16, Assets.svgsArrowRight),
                const SizedBox(width: 16),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 312,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CardItem(
                        image: cardData[index]['image']!,
                        title: cardData[index]['title']!,
                      ),
                      if (index < 1) const SizedBox(width: 8),
                      // 8px gap between items
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Popular character',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xDE1F1F1E),
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(
              height: 172,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      HeadCard(
                        image: headData[index].imagePath,
                        title: headData[index].title,
                        subtitle: headData[index].subtitle,
                        backgroundColor: headData[index].backgroundColor,
                      ),
                      if (index < 2) const SizedBox(width: 8),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 32), // Added bottom padding for better scrolling experience
          ],
        ),
      ),
    );
  }
}

class HeadCard extends StatelessWidget {
  final Color backgroundColor;
  final String image;
  final String title;
  final String subtitle;

  const HeadCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 104,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -24,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(
                    width: 64, height: 64,
                    child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                    )
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xDE1F1F1E),
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0x991F1F1E),
                    decoration: TextDecoration.none,
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

class CardItem extends StatelessWidget {
  final String image;
  final String title;

  const CardItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 312,
      width: 212,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              image,
              width: 212,
              height: 312,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: SvgPicture.asset(Assets.svgsCheese, width: 48, height: 48),
          ),
          Positioned(
            left: 8,
            bottom: 12,
            child: SizedBox(
              width: 200,
              child: Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
