import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "البحث عن المتجراو وصف",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.search_rounded)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.teal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios,color: Colors.white,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("اطلب اي شي!",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                      Text("جديدنا على توترز اذا يسع على دراجة يمكننا توصيلة",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                    ],
                  ),
                  SizedBox(width: 4,),
                  Image.asset("assets/images/deliverimg.png",height: 60,),
                ],
              ),

            ),
Container(
  height: MediaQuery.of(context).size.height*0.66,
  width: 400,
  child:   ListView(

    children: [
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"), cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"), cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
      cardofSearch("assets/images/1.jpeg","خصومات الاال","سعادتك تكتكل ةينتتسمسنستاناني","ا28 متجر"),
    ],

  ),
)

          ],
        ),
      ),
    );
  }

   cardofSearch(String img, String tex1,String tex2,String tex3) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(tex1,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(tex2,style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                    Text(tex3,style: TextStyle(color: Colors.teal,fontSize: 14,fontWeight: FontWeight.bold),),
                  ],

                ),
                SizedBox(width: 16,),
                Image.asset(img,height: 90,),
              ],
            ),
    );
  }
}
