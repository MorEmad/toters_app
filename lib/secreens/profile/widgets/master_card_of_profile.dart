import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/my_models.dart';
import 'element_of_card_profile.dart';
import '../../widgets/my_divider.dart';

class MasterCardOfProfile extends StatelessWidget {
  String mainTitle;
  double height;
  bool hasIcon;
  List<modelementOfCardBalance> mylist;

  MasterCardOfProfile({
    Key? key,
    required this.mainTitle,
    required this.height,
    required this.hasIcon,
    required this.mylist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                hasIcon
                    ? Stack(
                        children: const [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.teal,
                          ),
                          Positioned(
                              left: 10,
                              top: 3,
                              child: Text(
                                "i",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    : SizedBox(),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  mainTitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
                height: height,
                width: double.infinity,
                child: ListView.separated(

                    itemBuilder: (BuildContext context, int index) =>
                        ElelmentOfCardProfile(
                            icon: mylist[index].icon,
                            tex1: mylist[index].tex1,
                            tex2: mylist[index].tex2),
                    separatorBuilder: (BuildContext context, int index) =>
                        MyDivider(
                          color: Colors.grey.withOpacity(0.2),
                          height: 1,
                          width: double.infinity,
                        ),
                    itemCount: mylist.length))
          ],
        ),
      ),
    );
  }
}
