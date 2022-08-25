import 'package:flutter/material.dart';
import 'package:toters_app/secreens/home/widgets/ads_widget.dart';
import 'package:toters_app/secreens/home/widgets/card_of_main_meal.dart';
import 'package:toters_app/secreens/home/widgets/my_carousel_images.dart';
import 'package:toters_app/secreens/profile/widgets/my_app_bar.dart';
import 'package:toters_app/secreens/home/widgets/my_card_category.dart';
import 'package:toters_app/secreens/widgets/my_divider.dart';
import '../../constants/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


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
                txt: "احصل على خصم 50% على المطاعم هذا الاسبوع",
                title: 'خصومات اسبوعية',
              ),
              AdsWidget(
                txt: "اختر افطارك المفضل من توترز",
                title: 'اجة وكت الريوك',
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
              const Text(
                "3.8K",
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
      children: [
        MyCardCategory(img: "assets/images/mycast.png", title: "البقالة"),
        MyCardCategory(img: "assets/images/grocery.png", title: "توترز فرش"),
        MyCardCategory(img: "assets/images/myburger.png", title: "المطاعم"),
        MyCardCategory(img: "assets/images/mywallit.png", title: "اضف رصيد"),
        MyCardCategory(img: "assets/images/mydeliver.png", title: "المندوب"),
        MyCardCategory(img: "assets/images/mybags.png", title: "متاجر"),
      ],
    );
  }
}


