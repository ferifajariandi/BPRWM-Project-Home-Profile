import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/data/colors.dart';

class DescriptionTextWidget extends StatelessWidget {
  const DescriptionTextWidget({
    Key? key,
    required this.size, required this.index, required this.description,
  }) : super(key: key);

  final Size size;
  final int index;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: kTextColor,
        fontSize: size.width*0.035,
      ),
    );
  }
}