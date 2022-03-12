import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyt_trying/models/tagsCategory.dart';
import 'package:fyt_trying/pages/home_page.dart';
import 'package:fyt_trying/widgets/slogan_fyt.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProject extends StatefulWidget {
  static const routeName = "/addProject";

  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  int i;
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
            left: 8.0,
            top: 8.0,
            right: 8.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text("Layihəni paylaş",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  top: 8.0,
                  right: 10.0,
                ),
                child: Container(height: 150, width: 350, child: Placeholder()),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text("Kateqoriya",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 15,
              ),
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
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text("İnfo",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w700)),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "Layihənin adı *",
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 120,
                child: TextFormField(
                  maxLines: 5,
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    labelText: "Haqqında",
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "Address",
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "Email *",
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "Telefon",
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: "Website *",
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
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 150,
                    height: 45,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset("assets/svg/share.svg"),
                          Text(
                            "Paylaş",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                letterSpacing: 2.0,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      color: const Color(0xff149cff),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
