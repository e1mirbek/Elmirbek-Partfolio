



import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class HeaderTabs extends StatelessWidget {
  const HeaderTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Spacer(flex: 3),
        TabsWeb("Главная"),
        Spacer(),
        TabsWeb("Проекты"),
        Spacer(),
        TabsWeb("Заметки"),
        Spacer(),
        TabsWeb("Обо мне"),
        Spacer(),
        TabsWeb("Контакты"),
        Spacer(),
      ],
    );
  }
}
