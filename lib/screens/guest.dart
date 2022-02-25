import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'instagram_box.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final List<String> imgList = [
      'assets/user.jpg',
      'assets/user.jpg',
      'assets/user.jpg',
      'assets/user.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 295,
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
                      Text(
                          '         - Never been in jail before playing monopoly')
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
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 220,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 5, right: 50),
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
              padding: const EdgeInsets.only(left: 50, top: 2, right: 50),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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
            Container(
              width: double.infinity,
              height: 1,
              color: const Color(0xFFD387FF),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialogBidget(context);
                  },
                  child: Text(
                    'REPORT NELLY',
                    style: GoogleFonts.roboto(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFD387FF),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4.5,
                          offset: const Offset(4, 7),
                        ),
                      ],
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/chat.svg',
                        color: const Color(0xFFD387FF),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4.5,
                              offset: const Offset(5, 5),
                            ),
                          ],
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/crosss.svg',
                            width: 25,
                            height: 35,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 4.5,
                              offset: const Offset(5, 5),
                            ),
                          ],
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/mark.svg',
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

showDialogBidget(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    backgroundColor: const Color(0xFFD387FF),
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '    You want\nto report Nelly',
              style: GoogleFonts.roboto(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: TextField(
            maxLength: 700,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Tell us what you are reporting',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(30)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 160.h, horizontal: 20.w),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: const Color(0xFFD387FF),
                ),
                child: MaterialButton(
                  height: 40,

                  padding: const EdgeInsets.only(left: 20, right: 20),

                  onPressed: () {},

                  child: const Text(
                    'CANCEL',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),

                  // color: Colors.indigo.shade400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  border: Border.all(
                    color: Colors.white,
                  ),
                  color: const Color(0xFFD387FF),
                ),
                child: MaterialButton(
                  height: 40,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  onPressed: () {
                    showDialogCidget(context);
                  },
                  child: const Text(
                    'SUMMIT',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}

showDialogCidget(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    backgroundColor: Colors.black,
    title: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/thank.svg',
              height: 75,
              color: const Color(0xFFD387FF),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '  Thanks for\ncontacting us\n  about your\nexperience.',
              style: GoogleFonts.roboto(
                  fontSize: 26,
                  color: const Color(0xFFD387FF),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your safety is important, and each report\n    helps us on maintaining a safe space\n                   for all our members.',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Should you need support, please email us\n           to support@pumpandup.com',
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                border: Border.all(
                  color: Colors.white,
                ),
                color: const Color(0xFFD387FF),
              ),
              child: MaterialButton(
                height: 20,
                minWidth: 140,
                padding: const EdgeInsets.only(left: 30, right: 30),

                onPressed: () {},

                child: const Text(
                  'Ok',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),

                // color: Colors.indigo.shade400,
              ),
            ),
          ],
        )
      ],
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
