import 'package:flutter/material.dart';
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
     double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
         body:Column(children: [
          Container(
            color:Colors.grey.shade100 ,
            width: deviceWidth,
            height: 60,
            child: Row(children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("News/Notices",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(233, 0, 130, 4),fontSize: 22),),
                   )
            ],),
            
          )
         ],
          
        
        ),
      
      
      ),
    );
  }
}