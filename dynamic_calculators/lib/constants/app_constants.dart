import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
/*   herhangi bir nesne üretmeden değişkenleri çağırabilmek için static tanımladım.
 */

  // I defined the Main color of app
  static const MaterialColor mainColor = Colors.indigo;

  //I defined the title text of calculator avarage widget
  static const String titleText = 'Calculator Avarage';

  //I defined the font size of calculator avarage widget
  static const double fontSize = 24;

  static final TextStyle titleStyle = GoogleFonts.balooDa2(
      fontSize: 24, fontWeight: FontWeight.w900, color: mainColor);

  static BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle lectureCountStyle = GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w600, color: mainColor);
  static final TextStyle avarageStyle = GoogleFonts.quicksand(
      fontSize: 36, fontWeight: FontWeight.w800, color: mainColor);
}
