import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toters_app/secreens/widgets/my_divider.dart';

import '../../constants/colors.dart';
import '../bottom_nav_bar.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {

  var x=0;
  String radioItem = '';
  bool _isChecked1 = false;
  bool _isChecked2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading:  IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: const Icon(
          Icons.cancel,
          color: Colors.black,
        ),) ,
        actions: const [
          Icon(
            Icons.share,
            color: Colors.black,
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.favorite,
            color: Colors.black,
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        Image.asset("assets/images/main_meal/img_6.png").image),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Chicken Madfoun Platter",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter Chicken Madfoun Platter",
                  style: TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "IQD 13,000",
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          MyDivider(color: Colors.grey, height: 8, width: double.infinity),

     Column(
          children: [
            RadioListTile(

                title: Text("Mandi"),
                value: "Mandi",
                groupValue: radioItem,
                onChanged: (val) {
                  setState(() {
                    radioItem = "$val";
                  });
                }),
            RadioListTile(
                title: Text("bergur"),
                value: "chicen",
                groupValue: radioItem,
                onChanged: (val) {
                  setState(() {
                    radioItem = "$val";
                  });
                }),
            RadioListTile(
                title: Text("somthing"),
                value: "somthin",
                groupValue: radioItem,
                onChanged: (val) {
                  setState(() {
                    radioItem = "$val";
                  });
                }),
          ],
        ),
          const SizedBox(
            height: 8,
          ),
          MyDivider(color: Colors.grey, height: 8, width: double.infinity),


          CheckboxListTile(title: const Text("one"),value: _isChecked1, onChanged: (val){
            setState(() {
              _isChecked1=val!;
            });
          }),
          CheckboxListTile(title: const Text("two"),value: _isChecked2, onChanged: (val){
            setState(() {
              _isChecked2=val!;
            });
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  if(x!=0) x=x-1;
                });
              }, icon: Icon(Icons.minimize)),
              Text("$x"),
              IconButton(onPressed: (){
                setState(() {
                  x=x+1;
                });
              }, icon: Icon(Icons.add)),

            ],
          )
        ],
      ),


    );
  }
}
