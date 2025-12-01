





import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double size;
  const AvatarWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size,
      backgroundColor: Colors.tealAccent,
      child: CircleAvatar(
        radius: size - 4,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          radius: size - 7,
          backgroundImage: AssetImage("assets/images/profile.jpg"),
        ),
      ),
    );
  }
}
