
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class AdsWidget extends StatelessWidget {
  String title;
  String txt;
   AdsWidget({
     required this.title,
     required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(Icons.arrow_back_ios,color: primaryColor,size: 16,),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Text(title,style: TextStyle( color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
              Text(txt,style: TextStyle( color: Colors.grey,fontSize: 14),),
            ],
          ),
        )
      ],
    );
  }
}