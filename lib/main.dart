import 'package:flutter/material.dart';
import 'package:google_clone/Mobile/mobile_layout_home_page.dart';
import 'package:google_clone/responsive_layout.dart';
import 'package:google_clone/Mobile/search_screen.dart';
import 'package:google_clone/theme.dart';
import 'Web/web_layout_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const
      // SearchScreen(),
      ResponsiveLayout(
        mobileLayout: MobileLayoutHomePage(),
        webLayout: WebLayoutHomePage(),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
    );
  }
}
