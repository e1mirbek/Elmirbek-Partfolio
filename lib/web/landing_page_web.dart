import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: [
            Spacer(flex: 3,),
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
        ),
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 25.0),
      ),
      body: SafeArea(child: Center(child: const Text("LandingPageWeb"))),
    );
  }
}
