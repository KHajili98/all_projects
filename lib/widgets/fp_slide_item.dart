import 'package:flutter/material.dart';
import 'package:fyt_trying/models/fp_slide.dart';
import 'package:google_fonts/google_fonts.dart';

class FpSlideItem extends StatelessWidget {
  static const routeName = "/fp";

  final int index2;
  FpSlideItem(this.index2);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 13.22,
        ),
        // SvgPicture.asset(slideListFP[index2].imageUrlPrevious),
        // SvgPicture.asset(slideListFP[index2].imageUrlFon),
        SizedBox(
          height: 21,
        ),
        Text(
          slideListFP[index2].title,
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 13.22,
        ),
        Text(
          slideListFP[index2].description,
          style: GoogleFonts.montserrat(
              fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black54),
        )
      ],
    );
  }
}
