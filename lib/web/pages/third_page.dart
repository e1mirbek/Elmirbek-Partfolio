import 'package:elmirbek_abdumanapov/components.dart';
import 'package:elmirbek_abdumanapov/web/widgets/animated_widgets.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return Container(
      height: heightDevice / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SansBold("Мои услуги", 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWebWidgets(imagePath: 'assets/images/webL.png', text: 'Веб разработка',),
              AnimatedCardWebWidgets(imagePath: 'assets/images/app.png', text: 'Мобильный разработка', reverce: true,),
              AnimatedCardWebWidgets(imagePath: 'assets/images/firebase.png', text: 'Backend разработка',),
            ],
          )
        ],
      ),
    );
  }
}
