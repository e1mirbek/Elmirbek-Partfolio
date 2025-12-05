
import 'package:elmirbek_abdumanapov/web/widgets/first_page_widgets/avatar_widget.dart';
import 'package:elmirbek_abdumanapov/web/widgets/first_page_widgets/text_block.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    return Container(
      height: heightDevice - 56,
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
                    TextBlock(
                      welcomeSize: welcomeFontSize,
                      nameSize: nameFontSize,
                      professionSize: professionFontSize,
                    ),
                    AvatarWidget(size: avatarSize),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextBlock(
                      welcomeSize: welcomeFontSize,
                      nameSize: nameFontSize,
                      professionSize: professionFontSize,
                    ),
                    AvatarWidget(size: avatarSize),
                  ],
                );
        },
      ),
    );
  }
}
