import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../core/presentation_models/loading_item.dart';
import '../generated/assets.dart';

class TomAccount extends StatelessWidget {
  final loadingItems = [
    LoadingItem(
      backgroundColor: const Color(0xFFD0E5F0),
      imagePath: Assets.svgsLoadingDevil,
      title: '2M 12K',
      subtitle: 'No. of quarrels',
    ),
    LoadingItem(
      backgroundColor: const Color(0xFFDEEECD),
      imagePath: Assets.svgsLoadingRun,
      title: '+500 h',
      subtitle: 'Chase time',
    ),
    LoadingItem(
      backgroundColor: const Color(0xFFF2D9E7),
      imagePath: Assets.svgsLoadingSad,
      title: '2M 12K',
      subtitle: 'Hunting times',
    ),
    LoadingItem(
      backgroundColor: const Color(0xFFFAEDCF),
      imagePath: Assets.svgsLoadingHeart,
      title: '3M 7K',
      subtitle: 'Heartbroken',
    ),
  ];

  TomAccount({super.key});

  final settingsItems = [
    SettingsItem(title: 'Change sleeping place', imagePath: Assets.svgsAreka),
    SettingsItem(title: 'Meow settings', imagePath: Assets.svgsCat),
    SettingsItem(
      title: 'Password to open the fridge',
      imagePath: Assets.svgsFridge,
    ),
    SettingsItem(title: 'Mouses', imagePath: Assets.svgsAlert),
    SettingsItem(title: 'Last stolen meal', imagePath: Assets.svgsHamburger),
    SettingsItem(title: 'Change sleep mood', imagePath: Assets.svgsSleep),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF03578A),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 280,
                color: Color(0xFF03578A),
                child: SvgPicture.asset(
                  Assets.svgsXShape,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 56),
                    Image.asset(Assets.imagesMirrorTom, width: 80, height: 80),
                    const SizedBox(height: 4),
                    Text(
                      'Tom',
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'specializes in failure!',
                      style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 16,
                        color: Color(0xCCFFFFFF),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0x1FFFFFFF),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Edit foolishness',
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 260),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFEEF4F6),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: LoadingCard(
                                    backgroundColor:
                                        loadingItems[0].backgroundColor,
                                    imagePath: loadingItems[0].imagePath,
                                    title: loadingItems[0].title,
                                    subtitle: loadingItems[0].subtitle,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: LoadingCard(
                                    backgroundColor:
                                        loadingItems[1].backgroundColor,
                                    imagePath: loadingItems[1].imagePath,
                                    title: loadingItems[1].title,
                                    subtitle: loadingItems[1].subtitle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: LoadingCard(
                                    backgroundColor:
                                        loadingItems[2].backgroundColor,
                                    imagePath: loadingItems[2].imagePath,
                                    title: loadingItems[2].title,
                                    subtitle: loadingItems[2].subtitle,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: LoadingCard(
                                    backgroundColor:
                                        loadingItems[3].backgroundColor,
                                    imagePath: loadingItems[3].imagePath,
                                    title: loadingItems[3].title,
                                    subtitle: loadingItems[3].subtitle,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 32),
                            Text(
                              'Tom settings',
                              style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 20,
                                color: Color(0xDE1F1F1E),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 8),
                            for (var i = 0; i < settingsItems.length; i++)
                              Column(
                                children: [
                                  settingsItems[i],
                                  SizedBox(height: 12),
                                  if (i == 2)
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Divider(
                                          color: Color(0x14001A1F),
                                          thickness: 1,
                                        ),
                                        SizedBox(height: 16),
                                        Text(
                                          'His favorite foods',
                                          style: GoogleFonts.ibmPlexSansArabic(
                                            fontSize: 20,
                                            color: Color(0xDE1F1F1E),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                      ],
                                    ),
                                ],
                              ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'v.TomBeta',
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontSize: 14,
                            color: Color(0x99121212),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const SettingsItem({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imagePath, width: 40, height: 40),
        const SizedBox(width: 8),
        Text(
          title,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 16,
            color: Color(0xDE1F1F1E),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class LoadingCard extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;
  final String title;
  final String subtitle;

  const LoadingCard({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          SvgPicture.asset(imagePath, width: 40, height: 40),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // vertically center text
            children: [
              const SizedBox(height: 10),
              Text(
                title,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 16,
                  color: Color(0x99121212),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 12,
                  color: Color(0x5E121212),
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
