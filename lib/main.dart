import 'package:flutter/material.dart';
import 'package:flutter_ui_smarthome/theme.dart';
import 'package:flutter_ui_smarthome/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI - Smarthome',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
          colorScheme: woodColorScheme,
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          )),
      home: const WelcomeScreen(),
    );
  }
}
