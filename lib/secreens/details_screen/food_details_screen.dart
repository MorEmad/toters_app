import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:toters_app/constants/colors.dart';
import 'package:toters_app/secreens/widgets/my_divider.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../data/my_data.dart';
import '../home/home_screen.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  void initState() {
    getmail();
    super.initState();
  }

  var total_price = 0;
  String radioItem = '';
  bool _isChecked1 = false;
  bool _isChecked2 = false;

  Future getmail() async {
    var url = Uri.parse("http://localhost:4000/meals");
    http.Response response = await http.get(url);
    String body = response.body;
    List<dynamic> list1 = json.decode(body);

    for (int i = 0; i < list1.length; i++) {
      meal_name = list1[0]['meal_name'];
      res_name = list1[0]['res_name'];
      des = list1[0]['des'];
      img = list1[0]['img'];
      price = list1[0]['price'];
      setState(() {});
    }
  }
  Future Add_data() async {
    var url = Uri.parse("http://localhost:4000/add/my_order");
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"meal": "$meal_name",'
        ' "num_of_meal": "${total_price/price}",'
        ' "total_price": "$total_price","}';
    // make POST request
    http.Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.cancel,
            color: Colors.black,
          ),
        ),
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
                    fit: BoxFit.cover, image: NetworkImage(img)),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  meal_name,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  des,
                  style: const TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "IQD $price,000",
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
          CheckboxListTile(
              title: const Text("one"),
              value: _isChecked1,
              onChanged: (val) {
                setState(() {
                  _isChecked1 = val!;
                });
              }),
          CheckboxListTile(
              title: const Text("two"),
              value: _isChecked2,
              onChanged: (val) {
                setState(() {
                  _isChecked2 = val!;
                });
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (total_price != 0) total_price = total_price - 1;
                    });
                  },
                  icon: Icon(Icons.minimize)),
              Text("$total_price"),
              IconButton(
                  onPressed: () {
                    setState(() {
                      total_price = total_price + 1;
                    });
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width * 0.1,
            margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: primaryColor,
            ),
            child: Center(
              child: InkWell(
                onTap: (){
                  Add_data();
                  Get.to(HomeScreen());
                },
                child: Text("اضف الى السلة",style: TextStyle(color: Colors.white,),),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
