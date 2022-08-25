import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toters_app/secreens/profile/widgets/card_of_icon_profile.dart';
import 'package:toters_app/secreens/profile/widgets/master_card_of_profile.dart';
import '../../data/my_data.dart';

class ProfileScren extends StatefulWidget {
  const ProfileScren({Key? key}) : super(key: key);

  @override
  State<ProfileScren> createState() => _ProfileScrenState();
}

class _ProfileScrenState extends State<ProfileScren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              giftCardProile(context),
              cardOfSttings(),
              mainCardsOfProfile(),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "تسجيل الخروج",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column mainCardsOfProfile() {
    return Column(
      children: [
        MasterCardOfProfile(
          hasIcon: true,
          height: 180,
          mainTitle: "الرصيد النقدي لدى توترز",
          mylist: listlementCardBalance1,
        ),
        MasterCardOfProfile(
          hasIcon: false,
          height: 120,
          mainTitle: "عروض خاصة",
          mylist: listlementCardBalance2,
        ),
        MasterCardOfProfile(
          hasIcon: false,
          height: 320,
          mainTitle: "تفاصيل الحساب",
          mylist: listlementCardBalance3,
        ),
        MasterCardOfProfile(
          hasIcon: false,
          height: 240,
          mainTitle: "مركز المساعدة",
          mylist: listlementCardBalance4,
        ),
      ],
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Center(
          child: Text(
        "مرتضى عماد",
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      )),
    );
  }

  Stack cardOfSttings() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyCardIconProfile(
                icon: Icons.language,
                title: 'اللغة',
              ),
              MyCardIconProfile(
                icon: Icons.credit_card,
                title: 'طررق الدفع',
              ),
              MyCardIconProfile(
                icon: Icons.headset_mic_outlined,
                title: 'مركز المساعدة',
              ),
              MyCardIconProfile(
                icon: Icons.person,
                title: 'الملف الشخصي',
              ),
            ],
          ),
        ),
        Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.teal),
              child: Center(
                  child: Text(
                "ع",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            ))
      ],
    );
  }

  Container giftCardProile(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Colors.teal,
            size: 18,
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "الفئة الخضراء",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                ". نقطة",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Icon(
            Icons.card_giftcard,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
