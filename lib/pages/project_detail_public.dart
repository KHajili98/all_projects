import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/widgets/slogan_fyt.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class ProjectDetailForPublic extends StatefulWidget {
  static const routeName = "/prdetailpublic";

  @override
  _ProjectDetailForPublicState createState() => _ProjectDetailForPublicState();
}

class _ProjectDetailForPublicState extends State<ProjectDetailForPublic> {
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
            right: 30.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Layihə Haqqında",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SvgPicture.asset("assets/svg/bookmark.svg")
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
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text(
                    "Müraciət et",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  color: const Color(0xff149cff),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "12 nəfər müraciət edib",
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
