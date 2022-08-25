import 'package:flutter/material.dart';
import 'package:toters_app/constants/colors.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          bottom: const TabBar(
            indicatorColor: Colors.teal,
            tabs: <Widget>[
              Tab(
                text: "الطلبات السابقة",
                //  icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                text: "الطلبات القادمة",
                // icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/deliverimg.png",height: 140,),
                  SizedBox(height: 16,),
                  Text(
                    "!ليس لديك طلبات سايقة",
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/deliverimg.png",height: 140,),
                  SizedBox(height: 16,),
                  Text(
                    "لا توجد طلبات قادمة",
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}
