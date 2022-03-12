import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/pages/fp2_page.dart';
import 'package:fyt_trying/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Fp1Page extends StatefulWidget {
  static const routeName = "/fp1";

  @override
  _Fp1PageState createState() => _Fp1PageState();
}

class _Fp1PageState extends State<Fp1Page> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginPage.routeName);
                    },
                    child: SvgPicture.asset("assets/svg/previos.svg"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  new Image.asset(
                    "assets/jpg/forgot.jpg",
                    scale: 1.1,
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    "Şifrəni bərpa et",
                    style: GoogleFonts.montserrat(
                        fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 13.22,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  Text(
                    "Şifrəni unutmusan? Narahat olma, email-ni daxil et\nlazımı köməkliyi göstərək",
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 37.33,
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    hintStyle: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                          color: const Color(0xff149cff), width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 162.53,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: isActive ? 12 : 8,
                    width: isActive ? 12 : 8,
                    decoration: BoxDecoration(
                      color: isActive
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: isActive == false ? 12 : 8,
                    width: isActive == false ? 12 : 8,
                    decoration: BoxDecoration(
                      color: isActive == false
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: isActive == false ? 12 : 8,
                    width: isActive == false ? 12 : 8,
                    decoration: BoxDecoration(
                      color: isActive == false
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 29.55,
              ),
              Container(
                width: 300,
                height: 45,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Fp2Page.routeName);
                  },
                  child: Text(
                    "Davam et",
                    style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  color: const Color(0xff149cff),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
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
