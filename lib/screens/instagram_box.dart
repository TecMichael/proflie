import 'package:flutter/material.dart';

class InstagramBox extends StatelessWidget {
  const InstagramBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}
