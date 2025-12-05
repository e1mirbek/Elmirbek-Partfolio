import 'package:elmirbek_abdumanapov/components.dart';
import 'package:flutter/material.dart';

class ForthPage extends StatelessWidget {
  const ForthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: heightDevice,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SansBold("Связаться со мной", 40),
            const SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    TextForm(
                      heading: "Имя",
                      width: 350,
                      hintText: "Введите имя",
                      maxLines: 1,
                    ),
                    const SizedBox(height: 15),
                    TextForm(
                      heading: "Почта",
                      width: 350,
                      hintText: "Введите почту",
                      maxLines: 1,
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextForm(
                      heading: "Фамилия",
                      width: 350,
                      hintText: "Введите фамилию",
                      maxLines: 1,
                    ),
                    const SizedBox(height: 15),
                    TextForm(
                      heading: "Номер телефона",
                      width: 350,
                      hintText: "Введите номер телефона",
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextForm(
              heading: "Сообщение",
              width: widthDevice / 1.5,
              hintText: "Напишите, что бы вы хотели обсудить",
              maxLines: 10,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.tealAccent,
                foregroundColor: Colors.black,
                minimumSize: Size(200.0, 60.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10)),
              ),
              child: const Sans("Отправить", 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
