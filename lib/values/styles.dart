import 'package:flutter/material.dart';
import 'package:fooder_app/values/colors.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  scaffoldBackgroundColor: kBackgroundColor,
  textTheme: GoogleFonts.poppinsTextTheme(),
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: Colors.white,
  ),
);
