



import 'package:flutter/material.dart';



class AnimatedCardWebWidgets extends StatefulWidget {

  final String imagePath;

  final String text;

  final fit;

  final reverce;

  const AnimatedCardWebWidgets({super.key, required this.imagePath, required this.text, this.fit, this.reverce});

  @override
  State<AnimatedCardWebWidgets> createState() => _AnimatedCardWebWidgetsState();
}

class _AnimatedCardWebWidgetsState extends State<AnimatedCardWebWidgets> with SingleTickerProviderStateMixin {

  late AnimationController _controller = AnimationController(vsync: this, duration: const Duration(seconds: 4));

  late Animation<Offset> _animation = Tween();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
