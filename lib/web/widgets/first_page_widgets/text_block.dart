import 'package:elmirbek_abdumanapov/components.dart';
import 'package:elmirbek_abdumanapov/web/date/feedback_data.dart';
import 'package:elmirbek_abdumanapov/web/widgets/first_page/feedback_item.dart';
import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final double welcomeSize;
  final double nameSize;
  final double professionSize;

  const TextBlock({
    super.key,
    required this.nameSize,
    required this.welcomeSize,
    required this.professionSize,
  });

  @override
  Widget build(BuildContext context) {
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
            child: SansBold(
              "Приветствую! Это моя коллекция проектов, созданных с вниманием к деталям.",
              welcomeSize,
            ),
          ),
          const SizedBox(height: 15),
          SansBold("Элмирбек Абдуманапов", nameSize),
          const SizedBox(height: 15),
          Sans("Flutter разработчик | IOS | Android | WEB", professionSize),
          const SizedBox(height: 15),
          // генерация виджетов из списка
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: feedbackData.map((item) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: FeedbackItem(icon: item["icon"], text: item["text"]),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
