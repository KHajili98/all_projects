import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/models/project.dart';
import 'package:fyt_trying/models/tagsCategory.dart';
import 'package:fyt_trying/widgets/projects.dart';
import 'package:fyt_trying/widgets/projects_premium.dart';
import 'package:fyt_trying/widgets/slogan_fyt.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  int i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          centerTitle: true,
          actions: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: const Color(0xff149cff),
                  ),
                ),
              ),
            )
          ],
          automaticallyImplyLeading: false,
          title: slogan,
          elevation: 10.0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (i = 0; i < tagsListForProjects.length; i++)
                    Container(
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        child: Chip(
                          label: Text(
                            "#${tagsListForProjects[i].title}",
                            style: GoogleFonts.montserrat(
                              color: tagsListForProjects[i].seletion
                                  ? Colors.grey
                                  : Colors.white,
                            ),
                          ),
                          shape: StadiumBorder(
                              side: BorderSide(
                            color: tagsListForProjects[i].seletion
                                ? Colors.grey
                                : const Color(0xff149cff),
                            width: 0.5,
                          )),
                          backgroundColor: tagsListForProjects[i].seletion
                              ? Colors.white
                              : const Color(0xff149cff),
                          // padding: EdgeInsets.all(6.0),
                        ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Premium Layihələr",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset("assets/svg/star.svg")
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (i = 0; i < projectsPremium.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ProjectPremium(i),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Layihələr",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 350,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (i = 0; i < projects.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                        child: Projectss(i),
                      ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
