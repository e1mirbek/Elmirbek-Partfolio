import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class FeedbackItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  FeedbackItemWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Icon(icon), const SizedBox(width: 20), Sans(text, 15)],
    );
  }
}
