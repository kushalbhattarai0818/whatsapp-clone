import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hamropalika02/model/details_view_model.dart';
import 'package:hamropalika02/model/profile_view_model.dart';
import 'package:hamropalika02/models/details_models.dart';
import 'package:provider/provider.dart';

class ProfileScreeen extends StatelessWidget {
  const ProfileScreeen({super.key});

  @override
  Widget build(BuildContext context) {
     ProfileViewModel profileViewModel = Provider.of<ProfileViewModel>(context);

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  // TextEditingController genderController = TextEditingController();

  //  TextEditingController wardController = TextEditingController();
    
  String? selectedGender;

  List<String> genderOptions = ['Male', 'Female', 'Other'];
    
  String? selectedWard;

  List<String> WardOptions = ['1', '2', '3','4', '5', '6','7', '8', '9','10', '11', '12'];
      // double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Consumer<DetailsViewModel>(builder: (context, userDetails, child ){
      return  SafeArea(
        child: Scaffold(
       body:SingleChildScrollView(
         child: Column(
           children: [
             Container(
               width: deviceHeight,
               height: 250,
                 decoration: BoxDecoration(
             
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                         gradient: LinearGradient(
                           begin: Alignment.topLeft,
                           end: Alignment.bottomRight,
                           colors: [
                             Colors.pink,
                            
                             Color.fromARGB(255, 7, 109, 10),
                           ],
                         ),
                        
                       ),
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("My Profile",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold),),
                         ),
             
                         SizedBox(
                           height: 25,
                         ),
             
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                                              
                           children: [
                              CircleAvatar(
                             radius: 50,
                             child: Icon(Icons.person,size: 60,),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Column(children: [
                               Text("${userDetails.details[0].name}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                                
                               ),
                               Text("${userDetails.details[0].phone}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15))
                             ],),
                           )
                           ],
                          ),
                        ),
                       
                        ],),
             
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Please Update",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.black38),),
              ),
              SizedBox(
                height: 10,
              ),
      
              
              Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.person,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child: TextFormField(
                      
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "${userDetails.details[0].name}",
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                      ),
                      
                     ),
                   )
                  ],),
         
                   SizedBox(
                     height: 10,
                   ),
      
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.home,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child: TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                         hintText: "Address",
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                      ),
                      
                     ),
                   )
                  ],),
         
                   SizedBox(
                     height: 10,
                   ),
      
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.email,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                         hintText: "E-mail",
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                      ),
                      
                     ),
                   )
                  ],),
         
                   SizedBox(
                     height: 10,
                   ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.phone,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child: TextFormField(
                      controller: phoneController,
                      decoration: InputDecoration(
                         hintText: "Phone no",
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          
                        ),
                      ),
                      
                     ),
                   )
                  ],),
         
                   SizedBox(
                     height: 10,
                   ),
                
         
                  
         
                
      
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    FaIcon(FontAwesomeIcons.personDress,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child:  DropdownButtonFormField<String>(
                      
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
                      isCollapsed: true,
                      hintText: "Gender",contentPadding: EdgeInsets.all(8),
                      
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                   ),
                   )
                  ],),
      
      
                     SizedBox(
                    height: 10,
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    FaIcon(FontAwesomeIcons.building,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child:  DropdownButtonFormField<String>(
                    value: selectedWard,
                    onChanged: (String? newValue) {
                      selectedWard = newValue;
                    },
                    items: WardOptions.map((String Ward) {
                      return DropdownMenuItem<String>(
                        value: Ward,
                        child: Text(Ward),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      hintText: "Ward No",contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(20),
                        
                      ),
                      isCollapsed: true,
                      isDense: true,
                    ),
                   ),
                   )
                  ],),
      
                  SizedBox(
                    height: 15,
                  ),
      
      
                  ElevatedButton(
                    
                    onPressed: (){
        Details userdetails=Details(
      
          name: nameController.text,
          address: addressController.text,
          phone: phoneController.text,
          email: emailController.text,
          gender: selectedGender,
          ward: selectedWard,
        );
        profileViewModel.addDetails(userdetails, FirebaseAuth.instance.currentUser!.uid);
                    },
                    
                     child: Text("Please Update",style: TextStyle(color: Colors.white),),
                    style:   ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.pink; // Color when pressed
          }
          return  Color.fromARGB(255, 7, 109, 10); // Default color
        },
      ),
        ),
                    )
         
         
         
         
                  
         
                  
                ],
              )
           ],
         ),
       ),
      
      
        
         
      )
      );
    },
      
    );
  }
}