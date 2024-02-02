import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:hamropalika02/screens/home_screens/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:hamropalika02/screens/signup_screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  bool emailValidator(value) {
    if (value.contains('@')) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: deviceWidth,
              height: 30,
              color: Color.fromARGB(233, 0, 130, 4),
            ),
            Container(
              width: deviceWidth,
              height: 100,
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => BottomBarScreen()),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromARGB(233, 0, 130, 4),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Color.fromARGB(233, 0, 130, 4),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                            child: Text(
                              "Hamro ",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(233, 0, 130, 4)),
                            ),
                          ),
                          Text(
                            "Palika ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(233, 0, 130, 4)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      children: [
                        Form(
                            key: formkey,
                            child: Column(children: [
                              TextFormField(
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Email or Mobile No.",
                                  labelText: "Email or Mobile No.",
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromARGB(233, 0, 130, 4),
                                        width: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter email';
                                  }
                                  if (!emailValidator(value)) {}
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                  controller: passwordController,
                                  style: TextStyle(color: Colors.black),
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Password",
                                    labelText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                            233,
                                            0,
                                            130,
                                            4,
                                          ),
                                          width: 3),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color.fromARGB(
                                          233,
                                          0,
                                          130,
                                          4,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Enter password';
                                    }
                                    return null;
                                  }),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Forget Password?",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                      233,
                                      0,
                                      130,
                                      4,
                                    ),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  //  setState(() {
                                  if (formkey.currentState!.validate()) {
                                    FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email:
                                                emailController.text.toString(),
                                            password: passwordController.text
                                                .toString())
                                        .then((value) => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) =>
                                                    BottomBarScreen())));
                                  }
                                  return null;
                                  // });
//
                                },
                                child: Container(
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(
                                      233,
                                      0,
                                      130,
                                      4,
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              50, 0, 0, 0),
                                          child: InkWell(
                                              child: Text("Login",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          width: 250,
                          height: 1,
                          color: Color.fromARGB(
                            233,
                            0,
                            130,
                            4,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Don't have an an account?",
                          style: TextStyle(
                            color: Color.fromARGB(
                              233,
                              0,
                              130,
                              4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>SignupScreen()));

                            // FirebaseAuth.instance
                            //     .signInWithEmailAndPassword(
                            //         email: emailController.text,
                            //         password: passwordController.text)
                            //     .then((value) => Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (_) => BottomBarScreen())));
                          },
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(
                                233,
                                0,
                                130,
                                4,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(35, 0, 0, 0),
                                    child: Text("Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(width: 8),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: 120,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Color.fromARGB(
                                233,
                                0,
                                130,
                                4,
                              ),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Your information is secure with us\n Hamro Palika respects your privacy. ",
                              style: TextStyle(
                                color: Color.fromARGB(
                                  233,
                                  0,
                                  130,
                                  4,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
