import "dart:developer" as developer;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelectedMouse = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelectedMouse = true;
        });
        // developer.log("<<<Мышь зашла на кнопку>>>");
      },
      onExit: (_) {
        setState(() {
          isSelectedMouse = false;
        });
        // developer.log("<<<Мышь ушла с кнопки>>>");
      },
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 100),
        curve: Curves.elasticIn,
        style: isSelectedMouse
            ? GoogleFonts.oswald(
                fontSize: 25.0,
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationThickness: 1,
                decorationColor: Colors.black,
                shadows: [Shadow(offset: Offset(0, -08))],
              )
            : GoogleFonts.oswald(fontSize: 23.0, color: Colors.black),
        child: Text(widget.title),
      ),
    );
  }
}
