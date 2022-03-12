import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String title2;
  final String title3;
  final String description;
  final String buttonTitle;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.title2,
    @required this.title3,
    @required this.description,
    @required this.buttonTitle,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/svg/tut_1.svg',
      title: 'FIND',
      title2: "YOUR",
      title3: "TEAMMATES",
      description:
          'Proyektini Ideyasını həyata keçirə\n bilməyib çətinlik yaşayan və proyekt\n yoldaşı axtaran fərdlər üçün qlobal\n portal',
      buttonTitle: "Başla"),
  Slide(
      imageUrl: 'assets/svg/tut_2.svg',
      title: 'FIND',
      title2: "YOUR",
      title3: "TEAMMATES",
      description:
          'İstifadəçi FINDYOURTEAMMATES-i \n istifadə etmək üçün lazımi qeydiyyat  \nprosesini tamamlamalıdır',
      buttonTitle: "Növbəti"),
  Slide(
      imageUrl: 'assets/svg/tut_3.svg',
      title: 'FIND',
      title2: "YOUR",
      title3: "TEAMMATES",
      description:
          'Biznes və ya ideya sahibi olan şəxs\n layihəni detallı formada paylaşır',
      buttonTitle: "Növbəti"),
  Slide(
      imageUrl: 'assets/svg/tut_4.svg',
      title: 'FIND',
      title2: "YOUR",
      title3: "TEAMMATES",
      description:
          'Axtarılan doğru TEAMMATE-i\n tapmaq üçün uyğun kriteriyaları\n tətbiq edir',
      buttonTitle: "Növbəti"),
  Slide(
      imageUrl: 'assets/svg/tut_5.svg',
      title: 'FIND',
      title2: "YOUR",
      title3: "TEAMMATES",
      description:
          'Nəhayət, proyekt\n FINDYOURTEAMMATES \n platformasında uğurla paylaşılır',
      buttonTitle: "Anladım"),
];
