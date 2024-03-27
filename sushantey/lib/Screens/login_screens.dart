import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key}) ;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              border: Border.all(
                width: 0.20,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child:Column(
  children: [
    SizedBox(
      height: deviceHeight * 0.08, 
    ),
    Image.asset('assets/logo.png'),
    Image.asset('assets/logo2.png'),
    SizedBox(height: deviceHeight * 0.01), 
    Container(
      width: deviceWidth * 0.02,
      height: 1,
      color: Colors.white,
    ),
    Text(
      "KDS",
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    ),
    SizedBox(height: deviceHeight*0.03,),
      Container(
                   width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                   keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email or Phone Number',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                 SizedBox(height: deviceHeight*0.03,),
      Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                 Padding(
                   padding:  EdgeInsets.only(left:deviceWidth*0.110),
                   child: GestureDetector(
                               onTap: () {
                                 print('Forgot Password');
                               },
                               child: Text(
                                 'Forgot Password?',
                                 style: TextStyle(
                                   color: Colors.black,
                                   decoration: TextDecoration.underline,
                                 ),
                               ),
                             ),
                 ),
                  SizedBox(height: deviceHeight*0.03,),
                 Container(
                   width: 300,
                  height: 40,
                 
                   child: ElevatedButton(
                    
                     onPressed: () {
                     
                       print('Login button pressed');
                     },
                     style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.black,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(5),
                       ),
                     ),
                     child: Text('Login',style: TextStyle(color: Colors.white),),
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
