import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(15, 0, 0, 0),
                blurRadius: 10.0,
                spreadRadius: 0.0,
                offset: Offset(0, 4),
              )
            ]),
            child: SvgPicture.asset(slideList[index].imageUrl)),
        SizedBox(
          height: 30,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              slideList[index].title,
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color(0xff149cff),
              ),
            ),
            Text(
              slideList[index].title2,
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Text(
              slideList[index].title3,
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: const Color(0xff149cff),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 50,
        ),
        // FlatButton(
        //   onPressed: () {
        //     slideList[index + 1];
        //   },
        //   child: Text(
        //     slideList[index].buttonTitle,
        //     textAlign: TextAlign.center,
        //   ),
        // )
      ],
    );
  }
}
