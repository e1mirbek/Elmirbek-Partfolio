import 'package:elmirbek_abdumanapov/components.dart';
import 'package:elmirbek_abdumanapov/web/widgets/first_page/first_page.dart';
import 'package:flutter/material.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    final skills = [
      "Flutter",
      "Android",
      "IOS",
      "UX/UI",
      "Figma",
      "Firebase",
      "MySql",
      "GitHub",
      "Git",
    ];

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
            FirstPage(),
            // Second Page
            Container(
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
                            _buildImageAboutMeInformation(
                              imageAboutMeInformationFontSize,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTextAboutMe(
                                  aboutMeInformationFontSize,
                                  shortInformationFontSize,
                                ),
                                Row(
                                  children: skills
                                      .map(
                                        (scill) => Padding(
                                          padding: const EdgeInsets.only(
                                            right: 7.0,
                                          ),
                                          child: _buildSkillBox(scill),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            _buildImageAboutMeInformation(
                              imageAboutMeInformationFontSize,
                            ),
                            _buildTextAboutMe(
                              aboutMeInformationFontSize,
                              shortInformationFontSize,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: skills
                                  .map(
                                    (scill) => Padding(
                                      padding: const EdgeInsets.only(
                                        right: 7.0,
                                      ),
                                      child: _buildSkillBox(scill),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ======== Settings Size Second Page ========

  Widget _buildTextAboutMe(
    double aboutMeInformationSize,
    double shortInformationSize,
  ) {
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

  Widget _buildImageAboutMeInformation(double imageAboutMeInformation) {
    return Image.asset(
      "assets/images/about_me.jpg",
      height: imageAboutMeInformation,
    );
  }

  Widget _buildSkillBox(String skillTitle) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.tealAccent, width: 3.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Center(child: Sans(skillTitle, 15.0)),
    );
  }
}
