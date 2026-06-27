import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const ferrariRed = Color(0xFFFF2800);

class BurgerMacros extends StatelessWidget {
  const BurgerMacros({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        MyMacroWidget(title: 'Calories', value: 267, icon: FontAwesomeIcons.fire),
        SizedBox(width: 10),
        MyMacroWidget(title: 'Protein', value: 36, icon: FontAwesomeIcons.dumbbell),
        SizedBox(width: 10),
        MyMacroWidget(title: 'Fat', value: 21, icon: FontAwesomeIcons.oilWell),
        SizedBox(width: 10),
        MyMacroWidget(title: 'Carbs', value: 38, icon: FontAwesomeIcons.breadSlice),
      ],
    );
  }
}

class MyMacroWidget extends StatelessWidget {
  final String title;
  final int value;
  final FaIconData icon;

  const MyMacroWidget({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(2, 2),
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FaIcon(icon, color: ferrariRed),
              Text(
                title == 'Calories' ? '$value $title' : '${value}g $title',
                style: const TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
