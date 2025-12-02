



import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class TextBlockAboutMe extends StatelessWidget {
  final double aboutMeInformationSize;
  final double shortInformationSize;
  const TextBlockAboutMe({super.key, required this.aboutMeInformationSize, required this.shortInformationSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SansBold("Краткая информация", aboutMeInformationSize),
        const SizedBox(height: 15),
        Sans(
          "Абдуманапов Элмирбек Алтынбекович, родился 23 сентября 2005 года.",
          shortInformationSize,
        ),
        Sans(
          "Окончил Таласского государственного университета",
          shortInformationSize,
        ),
        Sans("по направлению информационных технологий", shortInformationSize),
        Sans(
          "Развитие в сфере IT - Мобильная разработка, базовый backend, версия контроль (Git),",
          shortInformationSize,
        ),
        Sans(
          "работа с базами данных, создание UI, интеграция API",
          shortInformationSize,
        ),
        Sans("решение технических задач.", shortInformationSize),
        const SizedBox(height: 10),
      ],
    );
  }
}
