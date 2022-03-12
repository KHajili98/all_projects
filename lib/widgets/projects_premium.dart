import 'package:flutter/material.dart';
import 'package:fyt_trying/models/project.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectPremium extends StatelessWidget {
  final int index;
  ProjectPremium(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 6.0,
      shadowColor: Colors.grey[10],
      child: Container(
        margin: EdgeInsets.all(4.0),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(projectsPremium[index].imageUrl),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    projectsPremium[index].title,
                    style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff149cff)),
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: projectsPremium[index].reviews.toString(),
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " reviews",
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(projectsPremium[index].description,
                  style: GoogleFonts.montserrat(
                      fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(projectsPremium[index].time)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
