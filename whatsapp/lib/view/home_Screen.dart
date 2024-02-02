import 'package:flutter/material.dart';
import 'package:whatsapp/view/whatsapp_Data.dart';

class home_Screen extends StatelessWidget {
  const home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0), // Set the height here
          child: AppBar(
            backgroundColor: Colors.green,
            title: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 3, 0),
                      child: Container(
                        child: Image.asset(
                          'assets/whatsapp.png',
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        'WhatsApp',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                      child: Icon(Icons.camera_alt),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Icon(Icons.search),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Icon(Icons.more_vert),
                    ),
                  ],
                ),
                
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
                      child: Text(
                        "Chats",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(75, 7, 0, 0),
                      child: Text(
                        "Updates",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(75, 7, 0, 0),
                      child: Text(
                        "Calls",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: friendsData.length,
            itemBuilder: (contex, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(friendsData[index]['imagepath']),
                    ),
                    title: Text(friendsData[index]['name']),
                    subtitle: Text(friendsData[index]['college']),
                    trailing: Icon(Icons.more_vert),
                  ),
                ),
              );
            }
           )
         );
       }
}
