import 'package:flutter/material.dart';
import 'package:shouses/pages/homepage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
 
class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex=0;
  void selIndex(int index){
    setState(() {
      
    });
    pageIndex=index;

  }

  final List Pages=[
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color: Colors.red,
            ),
            label: 'home'
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
            color: Colors.grey,
            ),
            label: 'fovrite'
           ),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,
            color: Colors.grey,
            ),
            label: 'cart'
           ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings,
            color: Colors.grey,
            ),
            label: 'setting'
           )

          
        ],
      ),
      body: Pages[pageIndex],


    );
  }
}