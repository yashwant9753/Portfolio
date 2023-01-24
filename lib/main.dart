import 'package:Yashwant/MemeShare/MemeShareResponsive.dart';
import 'package:Yashwant/ProjectHome/projectResponsive.dart';
import 'package:Yashwant/RateMyEduProject/RateMyEduProjectResponsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Yashwant/SenpaiLaptopProject/SenpaiLaptopProjectResponsive.dart';
import 'package:Yashwant/responsive.dart';
import 'package:Yashwant/resume/resumeResponsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ResponsiveLayout(),
        '/senpailaptops': (context) => SenpaiResponsiveLayout(),
        '/ratemyEducation': (context) => RateMyEduResponsiveLayout(),
        '/resume': (context) => ResumeResponsiveLayout(),
        '/projects': (context) => ProjectResponsiveLayout(),
        '/memeshare': (context) => MemeShareResponsiveLayout()
      },
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
