import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data/my_data.dart';
import '../../details_screen/details_screen.dart';
import 'package:get/get.dart';

class CardOfMainMeal extends StatelessWidget {
  String img;
  String title;
  String type;
  String rate;
  String time;
  String typeTime;
  String desc;
  CardOfMainMeal({
    Key? key,
    required this.img,
    required this.title,
    required this.rate,
    required this.type,
    required this.time,
    required this.typeTime,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to( DetailsScreen(img: img, desc: desc, title: title, rate: rate, time: time,typeTime: typeTime,));
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal,
                          image: DecorationImage(
                              image: Image.asset(img).image,
                              fit: BoxFit.cover)),
                    ),
                    const Positioned(
                      top: 16,
                      left: 16,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
               Text(
                  " $type \$\$",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.teal.withOpacity(0.1),
                      ),
                      child: Row(
                        children: const [
                          Text("اكسب النقاط",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.add_circle_outline,
                            size: 18,
                            color: Colors.teal,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withOpacity(0.1),
                      ),
                      child: Row(
                        children:  [
                          Text(rate,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.teal,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 130,
            left: 50,
            child: Container(
              //padding: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    time,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    typeTime,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  static Container listOFMainMeal(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.85,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemCount: listMainMeal.length,
        itemBuilder: (BuildContext context, int index) => CardOfMainMeal(
          img: listMainMeal[index].img,
          title: listMainMeal[index].title,
          type: listMainMeal[index].type,
          rate: listMainMeal[index].rate,
          time: listMainMeal[index].time,
          typeTime: listMainMeal[index].typeTime, desc:listMainMeal[index].desc ,
        ),
      ),
    );
  }
}
