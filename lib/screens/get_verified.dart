import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
