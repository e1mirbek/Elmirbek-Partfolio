import 'package:elmirbek_abdumanapov/components.dart';
import 'package:elmirbek_abdumanapov/web/date/card_skilss_data.dart';
import 'package:elmirbek_abdumanapov/web/widgets/third_page_widgets/card_skilss_widget.dart';
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
            children: skillsCardData.map((item) {
              return CardSkilssWidget(imagePath: item["image"], text: item["text"]);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
