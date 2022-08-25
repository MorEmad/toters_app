import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toters_app/constants/colors.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(right: 16),
          margin: EdgeInsets.only(bottom: 32),
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 0.4,
          color: primaryColor,
          child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "!نوصل اي شي يسع غلى دراجة نارية",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0,bottom: 8),
          child: Text(
            ":اطلب مندوب ل",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom:24,left: 16,right: 16),
          padding: EdgeInsets.only(right: 16,left: 10,top: 16,bottom: 16),
          width: double.infinity,
          //height: MediaQuery.of(context).size.width * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.arrow_back_ios,color: primaryColor,size: 16,),
              Image.asset("assets/images/deliverimg.png",height: 80,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "توصيل احتساجاتك",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 220,
                    child: Text("مثلا نسيت مفاتيحك  بالبيت وتريد احد يوصله لك للمكتب",
                        textAlign: TextAlign.end,
                        maxLines: 3,
                        softWrap: true,
                        // overflow: TextOverflow.fade,
                      ),
                  ),
                 ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom:24,left: 16,right: 16),
          padding: EdgeInsets.only(right: 16,left: 10,top: 16,bottom: 16),
          width: double.infinity,
          //height: MediaQuery.of(context).size.width * 0.28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.arrow_back_ios,color: primaryColor,size: 16,),
              Image.asset("assets/images/deliverimg.png",height: 80,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "شراء احتياجات",
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 200,
                    child: Text("ما لكيت الشي الي تريده بتطبيقنا؟ مندوب توترز يقدر يشتري لك اللي تحتاجه من اي مكان تختاره",
                      textAlign: TextAlign.end,
                      maxLines: 3,
                      softWrap: true,
                      // overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
}
