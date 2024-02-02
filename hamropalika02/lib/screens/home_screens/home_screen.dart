import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hamropalika02/screens/home_screens/department/water_supply/water_supply.dart';
import 'package:hamropalika02/screens/login_screens/login_screen.dart';
import 'package:hamropalika02/screens/notification_screen/notification_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key:_key,
        endDrawer: Drawer(
          child: Container(
            child: Column(
              children:<Widget> [
              Stack(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink,
                         
                          Color.fromARGB(255, 7, 109, 10),
                        ],
                      ),
                     
                    ),
                   
                  ),
          
                       Padding(
                         padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                         child: CircleAvatar(
                          radius: 40,
                          backgroundColor:  Colors.grey.shade100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Icon(Icons.person_sharp,size: 60,color: const Color.fromARGB(180, 158, 158, 158),)),
                              )
                            ],
                          ),
                         ),
                       ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
               
                color:  Colors.grey.shade100,
                child: Column(
                  children: [
                    Container(
                     
                    
                     
                      child: Column(children: [
                                
                        ListTile(
                          leading: Icon(Icons.home),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("Dashbord",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                           onTap: () {
                                         Navigator.push( context, MaterialPageRoute( builder: (_) =>HomeScreen()),);
                                      },
                        ),
                                
                         ListTile(
                          leading: Icon(Icons.notifications),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("Notification",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                           onTap: () {
                                         Navigator.push( context, MaterialPageRoute( builder: (_) =>NotificationScreen()),);
                                      },
                        ),
                                
                         ListTile(
                          leading: Icon(Icons.settings),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                         ListTile(
                          leading: Icon(Icons.info),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("About this App",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                                
                         ListTile(
                          leading:FaIcon(FontAwesomeIcons.circleQuestion,color:  Color.fromARGB(255, 7, 109, 10),),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("How To Use",style: TextStyle(color:  Color.fromARGB(255, 7, 109, 10),),),
                          ),
                        ),
                                
                         ListTile(
                          leading: Icon(Icons.logout),
                          title: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                           onTap: () {
                                         Navigator.push( context, MaterialPageRoute( builder: (_) =>LoginScreen()),);
                                      },
                        ),
                        
                      ],),
                    )
                  ],
                ),
          
              )
              ],
              ),
              
          
                
          
              
            ),
          ),
        
        backgroundColor: Colors.grey.shade100,
        body: Container(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: deviceWidth,
                  height: 320,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pink,
                        Color.fromARGB(200, 7, 109, 10),
                        Color.fromARGB(255, 7, 109, 10),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70)),
                  ),
                ),
                Container(
                  width: deviceWidth,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      InkWell
                      (child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Icon(Icons.menu_outlined,color: Colors.white,size: 30,),
                      ),
                        onTap: () {
                          
                          _key.currentState?.openEndDrawer();
                        },
                      ),
                     
                    
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 220, 0, 0),
                  child: Container(
                    width: deviceWidth,
                    height: 260,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 8, 0, 0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(context,MaterialPageRoute(builder: (_)=>WaterSupply()) );
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.faucet,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "Water Supply",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                184, 0, 0, 0)),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    Icons.car_crash,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Parking",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.recycle,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Waste\nManagement",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .peopleArrows,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Public Issue",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.road,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Road",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.book,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Eduction",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.lightbulb,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Electricity",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .houseFloodWater,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Sewag",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 600, 0, 0),
                  child: Container(
                    height: 150,
                    width: deviceWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 230,
                              height: 124,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.person,
                                      size: 85,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 12, 0, 0),
                                        child: Text("Hamro Mayor",
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 0),
                                        child: Text(
                                          "Directly Communicate\nwith your palika repre-\nsentative.",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              width: 230,
                              height: 124,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.person,
                                      size: 85,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 12, 0, 0),
                                        child: Text("Hamro Ward",
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 0),
                                        child: Text(
                                          "Directly Communicate\nwith your ward repre-\nsentative.",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 850, 0, 0),
                  child: Container(
                    height: 130,
                    width: deviceWidth,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Container(
                              width: 230,
                              height: 124,
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.computer,
                                      size: 50,
                                      color: Colors.pink,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 12, 0, 0),
                                        child: Text(
                                            "Representative/\nEmployee",
                                            style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 0),
                                        child: Text(
                                          "Knows the Employees and\npalika  representative.",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(160, 0, 0, 0),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 1100, 0, 0),
                  child: Container(
                    width: deviceWidth,
                    height: 260,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .locationPin,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Tourism Site",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.city,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Ward",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.info,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Introduction",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.building,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Government\nOffice",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.phone,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Emergency No",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.hospital,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Hospital",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.toilet,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Public Toilet",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .squareParking,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    20, 10, 216, 17),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      233, 0, 130, 4),
                                                )),
                                          ),
                                        ),
                                        Text(
                                          "Parking Area",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(
                                                  184, 0, 0, 0)),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 1050, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Other Services",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(233, 0, 130, 4),
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(233, 0, 130, 4),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(233, 0, 130, 4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 800, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Information",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(233, 0, 130, 4),
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(233, 0, 130, 4),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(233, 0, 130, 4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 550, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Communication",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(233, 0, 130, 4),
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(233, 0, 130, 4),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(233, 0, 130, 4),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 150, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Departments for complaints",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    
      ),
    );
  }
}
