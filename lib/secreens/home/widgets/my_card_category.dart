
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardCategory extends StatelessWidget {
  String img;
  String title;
  MyCardCategory({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow:  [
          BoxShadow(
              spreadRadius: 2,
              blurRadius: 7,
              color: Colors.grey.withOpacity(0.3),
              offset:const Offset(0, 2)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img,height: 40,),
          Text(title),

        ],
      ),
    );
  }
}
