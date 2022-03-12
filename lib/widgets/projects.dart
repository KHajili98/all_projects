import 'package:flutter/material.dart';
import 'package:fyt_trying/models/project.dart';
import 'package:google_fonts/google_fonts.dart';

class Projectss extends StatelessWidget {
  final int index;
  Projectss(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 6.0,
      shadowColor: Colors.grey[10],
      child: Container(
        height: 140,
        width: 480,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: 180,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset(
                    projects[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              height: 140,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projects[index].title,
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff149cff)),
                    ),
                    Text(projects[index].description,
                        style: GoogleFonts.montserrat(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: projects[index].reviews.toString(),
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " reviews",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          projects[index].time,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
