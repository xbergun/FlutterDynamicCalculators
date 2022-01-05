import 'package:dynamic_calculators/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ShowAvarage extends StatelessWidget {
  final double avarage;
  final int lectureCount;

  const ShowAvarage(
      {required this.lectureCount, required this.avarage, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          lectureCount > 0 ? '$lectureCount Ders Seçildi' : 'Ders Seçiniz',
          style: Constants.lectureCountStyle,
        ),
        Text(
          avarage >= 0 ? '${avarage.toStringAsFixed(2)}' : '0.0',
          style: Constants.avarageStyle,
        ),
        Text('Ortalama', style: Constants.lectureCountStyle),
      ],
    );
  }
}
