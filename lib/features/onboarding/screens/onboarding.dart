import 'package:asstylesolver/common/divider.dart';
import 'package:asstylesolver/core/slider_images.dart';
import 'package:asstylesolver/pallate/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../common/background_image.dart';
import '../../../common/clippers/star.dart';
import '../../../core/build_carsour_images.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0).copyWith(left: 24),
                child: Container(
                  height: 34,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(83, 159, 159, 159),
                  ),
                  child: Center(
                      child: Text(
                    'Skip',
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
              CarouselSlider.builder(
                itemCount: onBoardingSliderImages.length,
                itemBuilder: (context, index, realIndex) {
                  onBoardingSliderImages[index];
                  return BuildImages(
                    imageUrl: onBoardingSliderImages[index],
                    index: index,
                  );
                },
                options: CarouselOptions(
                  height: 350,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  pageSnapping: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.65,
                ),
                // add this line
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, right: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w800,
                          fontSize: 38,
                          color: Colors.white),
                    ),
                    Text(
                      'Never struggle with what to wear again',
                      style: GoogleFonts.abel(
                          color: Color.fromARGB(210, 181, 181, 148),
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GradientDivider(),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Get Started',
                          style: GoogleFonts.quicksand(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 34,
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: ClipPath(
                            clipper: StarClipper(16),
                            child: Container(
                              height: 150,
                              color: Pallet.boarderColor,
                              child: const Center(
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
