import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/pages/fp3_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../verification_code_input.dart';
import 'fp1_page.dart';

class Fp2Page extends StatefulWidget {
  static const routeName = "/fp2";
  @override
  _Fp2PageState createState() => _Fp2PageState();
}

class _Fp2PageState extends State<Fp2Page> {
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
                      Navigator.pushNamed(context, Fp1Page.routeName);
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
                child: VerificationCodeInput(
                  textStyle: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.number,
                  length: 4,
                  itemDecoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xff149cff), width: 2),
                    borderRadius: BorderRadius.circular(14.0),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                "Email hesabınıza göndərdiyimiz\npin kodu daxil edin",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
              SizedBox(
                height: 118.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                    Navigator.pushNamed(context, Fp3Page.routeName);
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
