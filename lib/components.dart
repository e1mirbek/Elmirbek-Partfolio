import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                decorationColor: Colors.tealAccent,
                shadows: [Shadow(offset: Offset(0, -08))],
              )
            : GoogleFonts.oswald(fontSize: 23.0, color: Colors.black),
        child: Text(widget.title),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final String text;
  final size;

  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final String text;
  final size;

  const Sans(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.w500),
    );
  }
}

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxLines;

  const TextForm({
    super.key,
    required this.heading,
    required this.width,
    required this.hintText,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16),
        const SizedBox(height: 5.0),
        SizedBox(
          width: width,
          child: TextFormField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.allow(RegExp("[a-zA-Zа-яА-Я]")),
            ],
            maxLines: maxLines == null ? null : maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.tealAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
