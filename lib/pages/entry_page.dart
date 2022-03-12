import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fyt_trying/pages/home_page.dart';
import 'package:fyt_trying/pages/login_page.dart';
import 'package:fyt_trying/pages/register_page.dart';

import 'package:google_fonts/google_fonts.dart';

class EntryPage extends StatelessWidget {
  static const routeName = "/entry";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Öz Pulsuz\nHesabını Yarat",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                    fontSize: 28, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Qeydiyyatdan keç və layihələrə qoşul",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "FIND",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff149cff),
                    ),
                  ),
                  Text(
                    "YOUR",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "TEAMMATES",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff149cff),
                    ),
                  ),
                  Text(
                    "platformasından istifadə etmək",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
              Text(
                "üçün aşağıdakı seçimlərdən biri ilə davam edə bilərsən. ",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              Text(
                "Uğurlu layihələr səni gözləyir",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 24.8,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Container(
                        width: 299.5,
                        height: 38.1,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset('assets/svg/fbicon.svg'),
                            Text(
                              "Facebook ilə davam et",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 299.5,
                        height: 38.1,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 35,
                            ),
                            SvgPicture.asset('assets/svg/googleicon.svg'),
                            SizedBox(
                              width: 75,
                            ),
                            Text(
                              "Google ilə davam et",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RegisterPage.routeName);
                      },
                      child: Container(
                          width: 299.5,
                          height: 38.1,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black38),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset('assets/svg/mailicon.svg'),
                              Text(
                                "Şəxsi mail ilə davam et",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 30.8,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Text(
                        "Bu addımı keç",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff149cff)),
                      ),
                    ),
                    SizedBox(
                      height: 45.8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Öz şəxsi \nhesabın var?",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 140,
                          height: 45,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.routeName);
                            },
                            child: Text(
                              "Daxil ol",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            color: const Color(0xff149cff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
