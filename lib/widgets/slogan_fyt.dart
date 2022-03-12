import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget slogan = new RichText(
    textAlign: TextAlign.center,
    text: TextSpan(children: <TextSpan>[
      TextSpan(
        text: "FIND",
        style: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: const Color(0xff149cff),
        ),
      ),
      TextSpan(
        text: "YOUR",
        style: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      TextSpan(
          text: "TEAMMATES",
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: const Color(0xff149cff),
          ))
    ]));
