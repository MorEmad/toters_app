import 'package:flutter/material.dart';

import '../models/my_models.dart';

final List<String> listImages = [
  'assets/images/1.jpeg',
  'assets/images/2.png',
  'assets/images/3.jpg',
];

List<MainMeal> listMainMeal = [
  MainMeal(
    img: "assets/images/main_meal/kahii.jpg",
    title: "كاهي فيروز",
    type: "فطور",
    rate: "4.5",
    time: '20-30',
    typeTime: 'د',
    desc:
    'تتنوع وجبات الإفطار حول العالم من حيث المحتوى، ففي شرق آسيا تؤكل أشكال الأرز المطهو أو المقلي، وفي اليابان، تكون البحريَّات جزءا من وجبة الإفطار، إجمالا لا تختلف الوجبات (الإفطار، الغداء والعشاء) عن بعضها في الشَّرق الأقصى بالمقدار الحاصل في الأجزاء الأخرى من العالم.',
  ),
  MainMeal(
    img: "assets/images/main_meal/img_2.png",
    title: "ست الشام",
    type: "مطبخ سوري",
    rate: "4.3",
    time: '1',
    typeTime: 'س',
    desc:
    'تتنوع وجبات الإفطار حول العالم من حيث المحتوى، ففي شرق آسيا تؤكل أشكال الأرز المطهو أو المقلي، وفي اليابان، تكون البحريَّات جزءا من وجبة الإفطار، إجمالا لا تختلف الوجبات (الإفطار، الغداء والعشاء) عن بعضها في الشَّرق الأقصى بالمقدار الحاصل في الأجزاء الأخرى من العالم.',

  ),
  MainMeal(
    img: "assets/images/main_meal/img_6.png",
    title: "خان مندي",
    type: "مندي",
    rate: "4.8",
    time: '45-55',
    typeTime: 'د',
    desc:
    'تتنوع وجبات الإفطار حول العالم من حيث المحتوى، ففي شرق آسيا تؤكل أشكال الأرز المطهو أو المقلي، وفي اليابان، تكون البحريَّات جزءا من وجبة الإفطار، إجمالا لا تختلف الوجبات (الإفطار، الغداء والعشاء) عن بعضها في الشَّرق الأقصى بالمقدار الحاصل في الأجزاء الأخرى من العالم.',

  ),
  MainMeal(
    img: "assets/images/main_meal/img_4.png",
    title: "زرزور",
    type: "مشويات,عراقي",
    rate: "4.5",
    time: '45-55',
    typeTime: 'د',
    desc:
    'تتنوع وجبات الإفطار حول العالم من حيث المحتوى، ففي شرق آسيا تؤكل أشكال الأرز المطهو أو المقلي، وفي اليابان، تكون البحريَّات جزءا من وجبة الإفطار، إجمالا لا تختلف الوجبات (الإفطار، الغداء والعشاء) عن بعضها في الشَّرق الأقصى بالمقدار الحاصل في الأجزاء الأخرى من العالم.',

  )
];

///////////////////////////////////////profil data///////////////////////////////////

List<modelementOfCardBalance> listlementCardBalance1=[

  modelementOfCardBalance(tex2: ".د.ع.", tex1: "المحفظة", icon: Icons.account_balance_wallet_outlined),
  modelementOfCardBalance(tex2: "", tex1: "اضف الى الرصيد", icon: Icons.add),
  modelementOfCardBalance(tex2: "", tex1: "تحويل الاموال", icon: Icons.arrow_upward),

];

List<modelementOfCardBalance> listlementCardBalance2=[

  modelementOfCardBalance(tex2: ".د.ع.", tex1: "رصيد", icon: Icons.lightbulb_circle_outlined),
  modelementOfCardBalance(tex2: "", tex1: "اضف الى الرصيد", icon: Icons.discount),
];

List<modelementOfCardBalance> listlementCardBalance3=[

  modelementOfCardBalance(tex2: ".د.ع.", tex1: "تفاصيل الحساب", icon: Icons.account_balance_wallet_outlined),
  modelementOfCardBalance(tex2: "", tex1: "العنوان", icon: Icons.add),
  modelementOfCardBalance(tex2: "", tex1: "اختياراتك", icon: Icons.favorite_border),
  modelementOfCardBalance(tex2: "", tex1: "المفضلات", icon: Icons.list_alt_outlined),
  modelementOfCardBalance(tex2: "", tex1: "ادع اصدقائك", icon: Icons.person_add_alt),
];



List<modelementOfCardBalance> listlementCardBalance4=[

  modelementOfCardBalance(tex2: "", tex1: "اطلب المساعدة", icon: Icons.headset_mic_outlined),
  modelementOfCardBalance(tex2: "", tex1: "بطاقات المساعدة", icon: Icons.chat),
  modelementOfCardBalance(tex2: "", tex1: "قانوني", icon: Icons.hardware),
  modelementOfCardBalance(tex2: "", tex1: "الاسألة المتكررة", icon: Icons.question_mark_outlined),
];
////////////////////////////////////////////////////////////////////////////////