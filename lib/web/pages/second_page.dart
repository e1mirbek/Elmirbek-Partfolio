
import 'package:elmirbek_abdumanapov/web/date/skilss_data.dart';
import 'package:elmirbek_abdumanapov/web/widgets/second_page_widgets/image_about_me_Information_widget.dart';
import 'package:elmirbek_abdumanapov/web/widgets/second_page_widgets/text_block_about_me.dart';
import 'package:flutter/material.dart';

import '../widgets/second_page_widgets/skill_box_widget.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return  Container(
      height: heightDevice / 1.5,
      decoration: BoxDecoration(color: Colors.white),
      child: LayoutBuilder(
        builder: (context, contrains) {
          // логика проверки ширины
          bool isSmallScreenAboutMe = contrains.maxWidth > 1350;

          // адаптивные размеры

          double aboutMeInformationFontSize = isSmallScreenAboutMe
              ? 40
              : 20;
          double shortInformationFontSize = isSmallScreenAboutMe
              ? 15
              : 13;
          double imageAboutMeInformationFontSize = isSmallScreenAboutMe
              ? heightDevice / 1.0
              : heightDevice / 5;

          return isSmallScreenAboutMe
              ? Row(
            children: [
             ImageAboutMeInformationWidget(imageSize: imageAboutMeInformationFontSize),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                TextBlockAboutMe(aboutMeInformationSize: aboutMeInformationFontSize, shortInformationSize: shortInformationFontSize),
                  Row(
                    children: skillsData.map((item) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SkillBox(text: item,),
                      );
                    }).toList()
                  )
                ],
              ),
            ],
          )
              : Column(
            children: [
              ImageAboutMeInformationWidget(imageSize: imageAboutMeInformationFontSize),
              TextBlockAboutMe(aboutMeInformationSize: aboutMeInformationFontSize, shortInformationSize: shortInformationFontSize),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children : skillsData.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SkillBox(text: item),
                  );
                }).toList(),
              )
            ],
          );
        },
      ),
    );
  }
}
