import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/projects/ProjcetsWidgets/ProjectResponsive.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/resume/resumeResponsive.dart';

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
        '/resume': (context) => ResumeResponsiveLayout()
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
