import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "/RegisterPage";

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Image.asset(
                      "assets/jpg/register.jpg",
                      scale: 1.1,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Qeydiyyat",
                      style: GoogleFonts.montserrat(
                          fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Özün haqqında lazımi məlumatları daxil etdikdən",
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
                          text: "sonra artıq sən də öz ",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                      TextSpan(
                          text: "TEAMMATE",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff149cff),
                          )),
                      TextSpan(
                          text: "-ni rahatlıqla tapa ",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54)),
                      TextSpan(
                          text: "\nbiləcəksən",
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54))
                    ]))
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    decoration: InputDecoration(
                      hintText: "Ad Soyad",
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
                  height: 16.33,
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
                  height: 16.33,
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
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
                  height: 20.6,
                ),
                Container(
                  width: 300,
                  height: 45,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
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
                SizedBox(
                  height: 10.6,
                ),
              ],
            ),
          ),
        ));
  }
}
