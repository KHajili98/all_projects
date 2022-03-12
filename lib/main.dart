import 'package:flutter/material.dart';
import 'package:fyt_trying/pages/add_project.dart';
import 'package:fyt_trying/pages/entry_page.dart';
import 'package:fyt_trying/pages/fp2_page.dart';
import 'package:fyt_trying/pages/home_page.dart';
import 'package:fyt_trying/pages/login_page.dart';
import 'package:fyt_trying/pages/own_project.dart';
import 'package:fyt_trying/pages/project_detail_public.dart';
import 'package:fyt_trying/pages/register_page.dart';
import './pages/tutorial_page.dart';
import 'pages/fp1_page.dart';
import 'pages/fp3_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GettingStartedScreen(),
      initialRoute: '/ownproject',
      routes: {
        EntryPage.routeName: (ctx) => EntryPage(),
        LoginPage.routeName: (ctx) => LoginPage(),
        HomePage.routeName: (ctx) => HomePage(),
        RegisterPage.routeName: (ctx) => RegisterPage(),
        Fp1Page.routeName: (ctx) => Fp1Page(),
        Fp2Page.routeName: (ctx) => Fp2Page(),
        Fp3Page.routeName: (ctx) => Fp3Page(),
        AddProject.routeName: (ctx) => AddProject(),
        ProjectDetailForPublic.routeName: (ctx) => ProjectDetailForPublic(),
        OwnProjectDetail.routeName: (ctx) => OwnProjectDetail(),

        //   ForgotPasswordPage.routeName: (ctx) => ForgotPasswordPage(),
      },
    );
  }
}
