



import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class SkillBox extends StatelessWidget {
  final String text;
  const SkillBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.tealAccent, width: 3.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(child: Sans(text, 15)),
    );
  }
}
