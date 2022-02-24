import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/screens/edit_screen.dart';
import 'package:profile/screens/guest.dart';
import 'package:profile/screens/preview_screen.dart';

import 'instagram_box.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final PageController _controller = PageController();
  int currentSelect = 0;
  final categoriesList = ['Edit', 'Preview'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        centerTitle: true,
        backgroundColor: const Color(0xFF181822),
        title: const Text('Information'),
        elevation: 0,
      ),
      body: Column(
        children: [
          FittedBox(
            child: Container(
              color: const Color(0xFF181822),
              child: Row(
                children: List.generate(
                  categoriesList.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelect = index;
                          _controller.jumpToPage(index);
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        width: size.width / 2,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: currentSelect == index
                                  ? const Color(0xFFD387FF)
                                  : Colors.transparent,
                              width: 3.6,
                            ),
                          ),
                        ),
                        child: Text(
                          categoriesList[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 3.2,
                            fontSize: 18,
                            color: currentSelect == index
                                ? const Color(0xFFD387FF)
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            flex: 5,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  currentSelect = index;
                });
              },
              children:  [
                const EditProfile(),
                SingleChildScrollView(
                  child: PreviewScreen(imgList: imgList, height: height, width: width),
                ),
                // GuestScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




