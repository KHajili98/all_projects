import 'package:flutter/material.dart';
import 'package:fyt_trying/models/project.dart';
import 'package:fyt_trying/models/tagsCategory.dart';
import 'package:fyt_trying/widgets/projects.dart';
import 'package:fyt_trying/widgets/slogan_fyt.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
                color: const Color(0xff149cff),
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
        title: slogan,
        elevation: 10.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Profil haqqında",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 40,
                        ),
                        Text("Veliyev Ayxan",
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: const Color(0xff149cff),
                                fontWeight: FontWeight.w700)),
                        SizedBox(
                          height: 10,
                        ),
                        Text("10-06-2020 tarixində qoşulub",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w400))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/jpg/profile.jpg")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                height: 220,
                width: 350,
                child: Text(
                    '''Mən Mobile Android developer olaraq 2 ildir ki, fəaliyyət göstərirəm. Müxtəlif texnologiya şirkətlərdə komanda daxilində yer almış və müasir texnologiyaları dərindən öyrənmişəm.  Bacarıqlarım: 
Java proqramlaşdırma Kotlin proqramlaşdırma
MVP və MVVM design pattern Google servisləri Android Jetpack library-si REST API''',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w400)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (i = 0; i < tagsListForActions.length; i++)
                        Container(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Chip(
                            label: Text(
                              "#${tagsListForActions[i].title}",
                              style: GoogleFonts.montserrat(
                                color: tagsListForProjects[i].seletion
                                    ? Colors.grey
                                    : Colors.white,
                              ),
                            ),
                            shape: StadiumBorder(
                                side: BorderSide(
                              color: tagsListForActions[i].seletion
                                  ? const Color(0xff149cff)
                                  : Colors.grey,
                              width: 0.5,
                            )),
                            backgroundColor: tagsListForActions[i].seletion
                                ? const Color(0xff149cff)
                                : Colors.white,
                            // padding: EdgeInsets.all(6.0),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 280,
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
            ],
          ),
        ),
      ),
    );
  }
}
