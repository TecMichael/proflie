import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/screens/information_screen.dart';
import 'get_verified.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF181822),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile',
          style: GoogleFonts.poppins(),
        ),
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 80,
                backgroundColor: Color(0xFFD387FF),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.jpg'),
                  radius: 75,
                  backgroundColor: Color(0xFFEBEAEF),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: GestureDetector(
                  onTap: () {
                    showDialogWidget(context);
                  },
                  child: SvgPicture.asset(
                    'assets/check.svg',
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              )
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFD387FF),
                      radius: 35,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 33,
                        child: Icon(
                          Icons.settings,
                          size: 30,
                          color: Color(0xFFD387FF),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xFFD387FF),
                            radius: 35,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            const InformationScreen()));
                              },
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 33,
                                child: Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Color(0xFFD387FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                Row(
                  children: [
                    Text(
                      'SETTINGS',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFD387FF),
                      ),
                    ),
                    const SizedBox(width: 70),
                    Text(
                      'EDIT PROFILE',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFD387FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 55),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFD387FF),
              ),
              child: MaterialButton(
                height: 60,
                padding: const EdgeInsets.only(left: 50, right: 50),
                // minWidth: 100,
                onPressed: () {},
                child: const Text(
                  'INVITE FRIENDS TO GET THE APP',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                // color: Colors.indigo.shade400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildSheet() => const GetVerfied();

showDialogWidget(BuildContext context) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
    backgroundColor: Colors.black,
    content: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/check.svg',
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Get Verified',
            style: GoogleFonts.roboto(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(height: 22),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'We will use facial recognition technology\nto ensure you are the real you and your\nfacial geometry matches with the pictures\n                 on your profile,',
                  style: TextStyle(color: Color(0xFFB4B4B4), fontSize: 18),
                )
              ],
            ),
          ),
          const SizedBox(height: 17),
          const Text(
            'Those selfies arent visible on the\nApp we keep them in our system in complete security and confidentiality,',
            style: TextStyle(color: Color(0xFFB4B4B4), fontSize: 18),
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
                      color: const Color(0xFFB4B4B4),
                    ),
                    color: Colors.black,
                  ),
                  child: MaterialButton(
                    height: 40,

                    padding: const EdgeInsets.only(left: 20, right: 20),

                    onPressed: () {},

                    child: const Text(
                      'MAYBE LATER',
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
                      color: const Color(0xFFB4B4B4),
                    ),
                    color: Colors.blue,
                  ),
                  child: MaterialButton(
                    height: 40,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    onPressed: () {},
                    child: const Text(
                      'VERIFY ME',
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
          const SizedBox(height: 27),
        ],
      ),
    ),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
