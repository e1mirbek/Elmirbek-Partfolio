import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class AnimatedCardWebWidgets extends StatefulWidget {
  final String imagePath;

  final String text;

  final fit;

  final reverce;

  const AnimatedCardWebWidgets({
    super.key,
    this.fit,
    this.reverce,
    required this.imagePath,
    required this.text,
  });

  @override
  State<AnimatedCardWebWidgets> createState() => _AnimatedCardWebWidgetsState();
}

class _AnimatedCardWebWidgetsState extends State<AnimatedCardWebWidgets>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    _animation = Tween(
      begin: widget.reverce == true ? Offset(0, 0.08) : Offset.zero,
      end: widget.reverce == true ? Offset.zero : Offset(0, 0.08),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.tealAccent),
          borderRadius: BorderRadius.circular(15.0),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                height: 200,
                width: 200,
                widget.imagePath,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Sans(widget.text, 15),
            ],
          ),
        ),
      ),
    );
  }
}
