
import 'package:elmirbek_abdumanapov/web/pages/first_page.dart';
import 'package:elmirbek_abdumanapov/web/pages/forth_page.dart';
import 'package:elmirbek_abdumanapov/web/pages/second_page.dart';
import 'package:elmirbek_abdumanapov/web/pages/third_page.dart';
import 'package:elmirbek_abdumanapov/web/widgets/header_tabs.dart';
import 'package:flutter/material.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const  HeaderTabs(),
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 25.0),
      ),
      body: SafeArea(
        child: ListView(
          // First section
          children: [
            const FirstPage(),
            // Second section
            const SecondPage(),
            // Third section
            const ThirdPage(),
            // Forth section
            const ForthPage(),
          ],
        ),
      ),
    );
  }
}
