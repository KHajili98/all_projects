import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/pages/fp2_page.dart';
import 'package:fyt_trying/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class Fp3Page extends StatefulWidget {
  static const routeName = "/fp3";

  @override
  _Fp3PageState createState() => _Fp3PageState();
}

class _Fp3PageState extends State<Fp3Page> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  void _toggle1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }

  void _toggle2() {
    setState(() {
      _obscureText2 = !_obscureText2;
    });
  }

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
                      Navigator.pushNamed(context, Fp2Page.routeName);
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
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                  decoration: InputDecoration(
                      hintText: "Yeni şifrə",
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
                      suffixIcon: IconButton(
                        icon: _obscureText1
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          _toggle1();
                        },
                      )),
                  obscureText: _obscureText1,
                ),
              ),
              SizedBox(
                height: 16.33,
              ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                      hintText: "Şifrənin təkrarı",
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
                      suffixIcon: IconButton(
                        icon: _obscureText2
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          _toggle2();
                        },
                      )),
                  obscureText: _obscureText2,
                ),
              ),
              SizedBox(
                height: 107.32,
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
                    Navigator.pushNamed(context, LoginPage.routeName);
                  },
                  child: Text(
                    "Yenilə",
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
