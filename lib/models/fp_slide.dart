import 'package:flutter/material.dart';

class SlideFP {
  final String imageUrlPrevious;
  final String imageUrlFon;
  final String title;
  final String description;
  final String buttonTitle;

  SlideFP({
    @required this.imageUrlPrevious,
    @required this.title,
    @required this.imageUrlFon,
    @required this.description,
    @required this.buttonTitle,
  });
}

final slideListFP = [
  SlideFP(
      imageUrlPrevious: 'assets/svg/previos.svg',
      imageUrlFon: 'assets/jpg/forgot.jpg',
      title: 'Şifrəni bərpa et',
      description:
          'Şifrəni unutmusan? Narahat olma, email-ni daxil et\nlazımı köməkliyi göstərək',
      buttonTitle: "Davam et"),
  SlideFP(
      imageUrlPrevious: 'assets/svg/previos.svg',
      imageUrlFon: 'assets/jpg/forgot.jpg',
      title: 'Şifrəni bərpa et',
      description:
          'Şifrəni unutmusan? Narahat olma, email-ni daxil et\nlazımı köməkliyi göstərək',
      buttonTitle: "Davam et"),
  SlideFP(
      imageUrlPrevious: 'assets/svg/previos.svg',
      imageUrlFon: 'assets/jpg/forgot.jpg',
      title: 'Şifrəni bərpa et',
      description:
          'Şifrəni unutmusan? Narahat olma, email-ni daxil et\nlazımı köməkliyi göstərək',
      buttonTitle: "Yenilə"),
];
