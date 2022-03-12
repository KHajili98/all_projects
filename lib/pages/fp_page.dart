import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/models/fp_slide.dart';
import 'package:fyt_trying/pages/home_page.dart';
import 'package:fyt_trying/widgets/fp_slide_item.dart';
import 'package:fyt_trying/widgets/slide_dot.dart';
import 'package:google_fonts/google_fonts.dart';

import '../verification_code_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const routeName = "/ForgetPasword";

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  int _currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();

    if (_currentPage < 0) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
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
                    SvgPicture.asset("assets/svg/previos.svg"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new Image.asset(
                      "assets/jpg/register.jpg",
                      scale: 1.1,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 21,
                // ),
                // Text(
                //   "Şifrəni bərpa et",
                //   style: GoogleFonts.montserrat(
                //       fontSize: 30, fontWeight: FontWeight.w700),
                // ),
                // SizedBox(
                //   height: 13.22,
                // ),
                // Text(
                //   "Şifrəni unutmusan? Narahat olma, email-ni daxil et\nlazımı köməkliyi göstərək",
                //   style: GoogleFonts.montserrat(
                //       fontSize: 12,
                //       fontWeight: FontWeight.w400,
                //       color: Colors.black54),
                // ),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideListFP.length,
                        itemBuilder: (ctx, i) => FpSlideItem(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slideListFP.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {
                            if (_currentPage == slideListFP.length - 1) {
                              Navigator.pushNamed(context, HomePage.routeName);
                            } else {
                              _pageController.nextPage(
                                  duration: new Duration(microseconds: 700),
                                  curve: Curves.easeInOut);
                            }
                          },
                          child: Text(
                            slideListFP[_currentPage].buttonTitle,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
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

                if (_currentPage == 1)
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: VerificationCodeInput(
                      textStyle: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.number,
                      length: 4,
                      itemDecoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(14.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
