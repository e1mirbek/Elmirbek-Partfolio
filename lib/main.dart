

import 'package:elmirbek_abdumanapov/mobile/landing_page_mobile.dart';
import 'package:elmirbek_abdumanapov/web/landing_page_web.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return LandingPageWeb();
        } else {
          return LandingPageMobile();
        }
      }),
    );
  }
}

