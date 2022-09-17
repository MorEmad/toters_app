import 'package:flutter/material.dart';
import 'package:toters_app/secreens/home/widgets/ads_widget.dart';
import 'package:toters_app/secreens/home/widgets/card_of_main_meal.dart';
import 'package:toters_app/secreens/home/widgets/my_carousel_images.dart';
import 'package:toters_app/secreens/profile/widgets/my_app_bar.dart';
import 'package:toters_app/secreens/home/widgets/my_card_category.dart';
import 'package:toters_app/secreens/widgets/my_divider.dart';
import '../../constants/colors.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert';

import '../../data/my_data.dart';
import '../../models/my_models.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getDataCarouselImages();
    getDataCategory();
    getDataAds();
    getResturant();
    getPoint();
    super.initState();
  }
  Future getDataCarouselImages() async {
    var url = Uri.parse("http://localhost:4000/ads");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    listImages.clear();

    for (int i = 0; i < list1.length; i++) {
      listImages.add(list1[i]['img']);
      print(listImages);
      setState(() {});
    }
  }
  Future getDataCategory() async {
    var url = Uri.parse("http://localhost:4000/catogary");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    MycategoryList.clear();

    for (int i = 0; i < list1.length; i++) {
      MycategoryList.add( MyCardCategory(img: list1[i]['img'], title: list1[i]['title']),
          );
      print(listImages);
      setState(() {});
    }
  }
  Future getDataAds() async {
    var url = Uri.parse("http://localhost:4000/offer");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    AdsWidgetTitle.clear();
    AdsWidgetDes.clear();
    for (int i = 0; i < list1.length; i++) {
      AdsWidgetTitle.add( list1[i]['title']);
      AdsWidgetDes.add( list1[i]['des']);
      print(AdsWidgetTitle);
      setState(() {});
    }
  }
  Future getResturant() async {
    var url = Uri.parse("http://localhost:4000/restrant");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);
    listMainMeal.clear();
    for (int i = 0; i < list1.length; i++) {
      listMainMeal.add(MainMeal(img: list1[i]['img'], title: list1[i]['res_name'], rate: list1[i]['rate'], type: list1[i]['des'], time: '1', typeTime: 'س', desc: list1[i]['des']) );
      print(listMainMeal);
      setState(() {});
    }
  }
  Future getPoint() async {
    var url = Uri.parse("http://localhost:4000/points");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);

    for (int i = 0; i < list1.length; i++) {
      points= list1[i]['num_points'];
      print(points);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MyAppBar(),
              myTopBar(),
              MyCarouselImagesWidget(),
              const SizedBox(
                height: 32,
              ),
              Mycategory(),
              const SizedBox(
                height: 16,
              ),
              MyDivider(
                  color: Colors.grey.withOpacity(0.1),
                  height: 12,
                  width: double.infinity),
              AdsWidget(
                txt: AdsWidgetDes[0],
                title: AdsWidgetTitle[0],
              ),
              AdsWidget(
                txt:AdsWidgetDes[1],
                title: AdsWidgetTitle[1],
              ),
              CardOfMainMeal.listOFMainMeal(context),
            ],
          ),
        ),
      ),

    );
  }


  Padding myTopBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: const [
                    Text(
                      "نقطة",
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.black87,
                      size: 16,
                    )
                  ],
                ),
              ),
               Text(
                "$points",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline_sharp,
                      color: primaryColor,
                    ),
                    Text(
                      "الفئة الخضراء",
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                MyDivider.listOfDivider(),
                const Text(
                  "تبقى 9 طلبات اضافية لغاية اغسطس 31 للترقية الى الفئة الذهبية",
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Wrap Mycategory() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children:[
        for (int i=0 ;i<MycategoryList.length;i++)
          MycategoryList.elementAt(i)
      ],
    );

  }
}


