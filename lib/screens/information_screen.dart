import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              children: const [
                EditProfile(),
                EditProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'About me',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            maxLength: 512,
            decoration: InputDecoration(
              hintText: 'Add a description',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 40, horizontal: 22),
              border: const OutlineInputBorder(),
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Interests',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            color: const Color(0xFFD387FF), width: 3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Spirituality',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFD387FF),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(
                                color: const Color(0xFFD387FF), width: 3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Travel',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFD387FF)),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(
                              color: const Color(0xFFD387FF), width: 3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Painting',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFFD387FF),
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
          const SizedBox(height: 10),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Job Title',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a Job title',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              border: const OutlineInputBorder(),
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Company',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a company',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              border: const OutlineInputBorder(),
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Education',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Add Education',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              border: const OutlineInputBorder(),
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Living In',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a city',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              border: const OutlineInputBorder(),
            ),
          ),
          Container(
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Sex',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                            color: const Color(0xFFD387FF), width: 3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Woman',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFD387FF),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Man',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
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
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.grey, width: 3),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'More',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
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
            height: 52,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Text(
                        'Spotify Anthem',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    // SvgPicture.asset('assets/spotify.svg',height: 5),
                    SizedBox(width: 5),
                    Text('data')
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
