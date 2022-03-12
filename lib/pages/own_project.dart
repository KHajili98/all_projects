import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/widgets/slogan_fyt.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class OwnProjectDetail extends StatefulWidget {
  static const routeName = "/ownproject";

  @override
  _OwnProjectDetailState createState() => _OwnProjectDetailState();
}

class _OwnProjectDetailState extends State<OwnProjectDetail> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
          )
        ],
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color(0xff149cff),
          ),
          onPressed: () =>
              Navigator.of(context).popAndPushNamed(HomePage.routeName),
        ),
        iconTheme: IconThemeData(
          color: const Color(0xff149cff),
        ),
        title: slogan,
        elevation: 10.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30.0,
            top: 20.0,
            right: 25.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Layihə Haqqında",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/jpg/projectbig.jpg"),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Innup startup",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "124",
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 

It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'''),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Əlaqə məlumatları",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/svg/mailicon1.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "seller@gmail.com",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/svg/locicon.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Seller st. Baku, Azerbaijan",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/svg/phoneicon.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "+994 50 123 45 78",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("assets/svg/webicon.svg"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "innup-startup.com",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Müraciət edənlər (12)",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 6.0,
                shadowColor: Colors.grey[20],
                child: Container(
                  width: 500,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/jpg/profile.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 4.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Orxan Əliyev",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Text("Mən Mobile Android developer olara...",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.delete_forever,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 6.0,
                shadowColor: Colors.grey[20],
                child: Container(
                  width: 500,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          "assets/jpg/profile.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 4.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Orxan Əliyev",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Text("Mən Mobile Android developer olara...",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Icon(
                            Icons.delete_forever,
                            color: Colors.red,
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
      ),
    );
  }
}
