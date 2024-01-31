import 'package:flutter/material.dart';
import 'package:hamropalika02/screens/home_screens/home_screen.dart';
import 'package:hamropalika02/screens/news_screen/news_screen.dart';
import 'package:hamropalika02/screens/notification_screen/notification_screen.dart';
import 'package:hamropalika02/screens/profile_screen/profile_screen.dart';



class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndexValue=0;
  List screenList=[
    HomeScreen(),
    NewsScreen(),
    NotificationScreen(),
    ProfileScreeen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndexValue],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor:  Colors.green,
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              color: Colors.white,
            ),
          
            onTap: (index){
              setState(() {
                currentIndexValue=index;
              });
            },
            currentIndex: currentIndexValue,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home, color: Colors.pink, size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper,color: Colors.pink,size: 30,),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.pink,size: 30,),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2,color: Colors.pink,size: 30,),
            label: 'Profile',
          ),
          
         
],
   
),

    );
  }
}