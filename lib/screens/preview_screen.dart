import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'instagram_box.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({
    Key? key,
    required this.imgList,
    required this.height,
    required this.width,
  }) : super(key: key);

  final List<String> imgList;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 290,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            aspectRatio: 1.5,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            disableCenter: false,
          ),
          items: imgList
              .map(
                (item) => Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item), fit: BoxFit.cover),
                  ),
                ),
              )
              .toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                'Nelly',
                style: GoogleFonts.roboto(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  '37',
                  style: GoogleFonts.roboto(fontSize: 23),
                ),
              ),
              const SizedBox(width: 28),
              SvgPicture.asset(
                'assets/check.svg',
                color: Colors.blue,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.mail,
                color: Color(0xFFD387FF),
              ),
              const SizedBox(width: 22),
              Text(
                'Art Director at TomTom',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.add_location_alt,
                color: Color(0xFFD387FF),
              ),
              const SizedBox(width: 22),
              Text(
                'Amsterdam',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.directions_walk_rounded,
                color: Color(0xFFD387FF),
              ),
              const SizedBox(width: 22),
              Text(
                '1 kilometer',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.school,
                color: Color(0xFFD387FF),
              ),
              const SizedBox(width: 22),
              Text(
                'Uninversity of  Mirail',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD387FF),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Spirituality',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD387FF),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Travel',
                            style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD387FF),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Painting',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 9),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 25,
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0xFFD387FF),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 22),
          child: Row(
            children: [
              Column(
                children: const [
                  Text('- Can cook  amazing  instant noodle'),
                  Text('- Semi-professional bathroom singer'),
                  Text('         - Never been in jail before playing monopoly')
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0xFFD387FF),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Text(
                'My Spotify',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 10.w),
          child: Row(
            children: [
              Container(
                height: 220.h,
                width: 190.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
               SizedBox(width: 10.w),
              Container(
                height: 220.h,
                width: 190.w,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 50.w, top: 5.h, right: 70.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Artist Name',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              Text(
                'Artist Name',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 50.w, top: 2.h, right: 70.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Album/Title',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
              Text(
                'Album/Title',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 25),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFD387FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/spotify.svg',
                      width: 20,
                      height: 15,
                    ),
                    Text(
                      'connect',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 1,
          color: const Color(0xFFD387FF),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Text(
                'My Instagram',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              InstagramBox(),
              SizedBox(width: 10),
              InstagramBox(),
              SizedBox(width: 10),
              InstagramBox(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              InstagramBox(),
              SizedBox(width: 10),
              InstagramBox(),
              SizedBox(width: 10),
              InstagramBox(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 25),
          child: Row(
            children: [
              Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFFD387FF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/insta.svg',
                      width: 20,
                      height: 15,
                    ),
                    Text(
                      'connect',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
