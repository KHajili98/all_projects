import 'package:flutter/material.dart';
import 'package:fyt_trying/pages/fp1_page.dart';
import 'package:fyt_trying/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new Image.asset(
                  "assets/jpg/login.jpg",
                  scale: 1.1,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Xoş gəldin!",
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: 16.3,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Səni yenidən gördüyümüzə sevindik!",
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Tələs! ",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54)),
                  TextSpan(
                      text: " TEAMMATE",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff149cff),
                      )),
                  TextSpan(
                      text: "-lərin səni gözləyir",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54))
                ]))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w500),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        BorderSide(color: const Color(0xff149cff), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.33,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Şifrə",
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
                      icon: _obscureText
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        _toggle();
                      },
                    )),
                obscureText: _obscureText,
              ),
            ),
            SizedBox(
              height: 41.99,
            ),
            Container(
              width: 300,
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                },
                child: Text(
                  "Daxil ol",
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
            SizedBox(
              height: 40.44,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Fp1Page.routeName);
              },
              child: Text(
                "Şifrəni unutmusan?",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff149cff)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
