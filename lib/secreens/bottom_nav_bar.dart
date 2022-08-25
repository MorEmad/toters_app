import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toters_app/secreens/profile/profile.dart';
import 'package:toters_app/secreens/search/search_screen.dart';
import '../constants/colors.dart';
import 'gift/gift_screen.dart';
import 'home/home_screen.dart';
import 'oder/orders.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  int _selectedIndex = 4;
  List<Widget>MyPages=[
    ProfileScren(),
    OrderScreen(),
    GiftScreen(),
    SearchScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'طلبات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'المندوب',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: ''
                'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'الرئيسة',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }
}
