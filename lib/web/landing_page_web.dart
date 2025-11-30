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
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
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
        ),
        centerTitle: true,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 25.0),
      ),
      body: SafeArea(
        child: ListView(
            // First page
          children: [
            Container(
              height: heightDevice -56,
              child: LayoutBuilder(
                builder: (context, contrains) {
                  // Проверка: маленький экран или большой
                  bool isSmall = contrains.maxWidth < 1200;

                  // Адаптивные размеры логики
                  double avatarSize = isSmall ? 90 : 147;
                  double nameFontSize = isSmall ? 28 : 55;
                  double welcomeFontSize = isSmall ? 12 : 15;
                  double professionFontSize = isSmall ? 20 : 30;

                  return isSmall
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildTextBlock(
                              nameFontSize,
                              welcomeFontSize,
                              professionFontSize,
                              15,
                            ),
                            _buildAvatar(avatarSize),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildTextBlock(
                              nameFontSize,
                              welcomeFontSize,
                              professionFontSize,
                              15,
                            ),
                            _buildAvatar(avatarSize),
                          ],
                        );
                },
              ),
            ),
            // Second Page
            Container(
              height: heightDevice / 1.5,
              decoration: BoxDecoration(
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SansBold("Обо мне", 40),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildAvatar(double size) {
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

Widget _buildTextBlock(
  double nameSize,
  double welcomeSize,
  double professionSize,
  feedbackSize,
) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SansBold("Приветствую! Это моя коллекция проектов, созданных с вниманием к деталям.", welcomeSize),
        ),
        const SizedBox(height: 15),
        SansBold("Элмирбек Абдуманапов", nameSize),
        const SizedBox(height: 15),
        Sans("Flutter разработчик | IOS | Android | WEB", professionSize),
        const SizedBox(height: 15),
        Row(
          children: [
            Icon(Icons.email_outlined),
            const SizedBox(width: 20),
            Sans("elmirgrowth@gmail.com", feedbackSize),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            Icon(Icons.call_outlined),
            const SizedBox(width: 20),
            Sans("+996 701 468 346", feedbackSize),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          children: [
            Icon(Icons.location_on_outlined),
            const SizedBox(width: 20),
            Sans("20/A, ул.Сатаева, Бишкек", feedbackSize),
          ],
        ),
      ],
    ),
  );
}
