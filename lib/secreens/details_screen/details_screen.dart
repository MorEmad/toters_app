import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'food_details_screen.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatefulWidget {
  String img;
  String title;
  String rate;
  String desc;
  String time;
  String typeTime;

  DetailsScreen({
    Key? key,
    required this.img,
    required this.title,
    required this.rate,
    required this.desc,
    required this.time,
    required this.typeTime,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Get.to(FoodDetailsScreen());
                    },
                    child: Image.asset(
                      widget.img,
                      height: 260,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.desc,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.blue.withOpacity(0.1)),
                            child: Row(
                              children: const [
                                Text(
                                  "اكسب نقاط",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                                Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.red.withOpacity(0.1)),
                            child: Row(
                              children: const [
                                Text(
                                  " 10 % استعادة النقود",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.teal,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey.withOpacity(0.3),
                                        size: 35,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.teal,
                                        size: 35,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.teal,
                                        size: 35,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.teal,
                                        size: 35,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.teal,
                                        size: 35,
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "استنادا الى 1200 تقيما",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Text(
                                widget.rate,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 56,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 1.5,
                        width: double.infinity,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.grey.withOpacity(0.3),
                                size: 24,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.teal,
                                size: 24,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.teal,
                                size: 24,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.teal,
                                size: 24,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.teal,
                                size: 24,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Adan",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          const Text(
                            "...الطعم رهيييب حبينه كلش والتوصيل سررريع ان شاء الله مو اخر مرة كلش ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "اكمل القرأة",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.right,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 220,
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
                    widget.time,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.typeTime,
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
