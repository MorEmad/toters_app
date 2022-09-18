
import 'package:flutter/material.dart';

import '../models/my_models.dart';
import '../secreens/home/widgets/my_card_category.dart';

var points;

final List<String> listImages = [
  'assets/images/1.jpeg',
  'assets/images/2.png',
  'assets/images/3.jpg',
];

List MycategoryList=[
  MyCardCategory(img: "assets/images/mycast.png", title: "البقالة"),
  // MyCardCategory(img: "assets/images/grocery.png", title: "توترز فرش"),
  MyCardCategory(img: "assets/images/myburger.png", title: "المطاعم"),
  // MyCardCategory(img: "assets/images/mywallit.png", title: "اضف رصيد"),
  MyCardCategory(img: "assets/images/mydeliver.png", title: "المندوب"),
  MyCardCategory(img: "assets/images/mybags.png", title: "متاجر"),
];

List<String> AdsWidgetTitle=[];
List<String> AdsWidgetDes=[];
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
    rate: "4",
    time: '1',
    typeTime: 'س',
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
//////////////////////////////details page////////////////////////
class DetailsPageMod{
  String meal_name;
  String res_name;
  String des;
  String img;
  String price;

  DetailsPageMod({required this.meal_name, required this.res_name, required this.img, required this.des, required this.price});
}

var meal_name;
var res_name;
var des;
var img;
var price;

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