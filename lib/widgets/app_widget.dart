import 'package:flutter/material.dart';
import 'package:friday/core/colors.dart';
import 'package:friday/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.nunitoSansTextTheme(),
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: HomePage(),
    );
  }
}
