import 'package:flutter/material.dart';

class MainMeal {
  String img;
  String title;
  String type;
  String rate;
  String time;
  String typeTime;
  String desc;

  MainMeal({
    required this.img,
    required this.title,
    required this.rate,
    required this.type,
    required this.time,
    required this.typeTime,
    required this.desc,
  });
}

class modelementOfCardBalance {
  IconData icon;
  String tex1;
  String tex2;
  modelementOfCardBalance({
    required this.icon,
    required this.tex1,
    required this.tex2,
});
}

