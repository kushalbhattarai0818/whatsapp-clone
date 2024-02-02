

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hamropalika02/model/profile_view_model.dart';
import 'package:hamropalika02/screens/home_screens/bottom_navigation_bar/bottom_navigation_bar.dart';

import 'package:hamropalika02/screens/login_screens/login_screen.dart';
import 'package:provider/provider.dart';

import '../../models/details_models.dart';




class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
 
   GlobalKey<FormState> fromkey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController genderController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController retypepasswordController = TextEditingController();


  String? selectedGender;

  List<String> genderOptions = ['Male', 'Female', 'Other'];

  bool isValidEmail(String email) {
  String emailRegex = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';
  return RegExp(emailRegex).hasMatch(email);
}
 

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
       ProfileViewModel profileViewModel = Provider.of<ProfileViewModel>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Sign Up")),
            Container(
          width: deviceWidth,
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: GestureDetector(
                    onTap: () {
                                     Navigator.push( context, MaterialPageRoute( builder: (_) =>LoginScreen()),);
                                  },
                  child: Icon(Icons.arrow_back_ios,color: Color.fromARGB(233, 0, 130, 4) ,)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromARGB(233, 0, 130, 4),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ],
          ),
        ),


         SingleChildScrollView(
        child: Form(
          key: fromkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                        hintText: "NAME(English)",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        labelText: "Name",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        hintText: "Addres",
                        prefixIcon: Icon(Icons.home),
                        labelText: "Address ",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter your address';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                        hintText: "Phone No",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        labelText: "Phone No",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value!.length != 10 || value.isEmpty) {
                        return 'Enter 10 digits number';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter email';
                      }
                      if (!isValidEmail(value)) {
                        return 'This is not valid email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 5, 50, 0),
                child: DropdownButtonFormField<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    selectedGender = newValue;
                  },
                  items: genderOptions.map((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                      hintText: "Gender",
                      prefixIcon: Icon(Icons.email),
                      prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                      labelText: "Gender",
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 7, 109, 10),
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 109, 10),
                      ))),
                  validator: (value) {
                    if (value != selectedGender || value == null) {
                      return 'please select gender';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter password';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: retypepasswordController,
                    decoration: InputDecoration(
                        hintText: "Re-type Password",
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color.fromARGB(255, 7, 109, 10),
                        labelText: "Re-type Password",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color.fromARGB(255, 7, 109, 10),
                        ))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Re-type password';
                      }
                      if (value != passwordController.text) {
                        return "password does't match";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade100,
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
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 60,
                    color: Color.fromARGB(233, 0, 130, 4),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (fromkey.currentState!.validate()) {
                    FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.toString()
                      
                    , password: passwordController.text.toString()).then((value) {

                      Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomBarScreen()));

                       Details userdetails=Details(

        name: nameController.text,
        address: addressController.text,
        phone: phoneController.text,
        email: emailController.text,
        gender: selectedGender,
        ward: "2",
      );
      profileViewModel.addDetails(userdetails, value.user!.uid);


                    });

                      
        
                    }
                    return null;
                  });
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
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: Text("Send",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),










          ],
        ),
      ),
    );

    
  }

}