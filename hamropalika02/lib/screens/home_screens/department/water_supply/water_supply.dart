import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hamropalika02/screens/home_screens/bottom_navigation_bar/bottom_navigation_bar.dart';
// import 'package:hamropalika02/screens/home_screens/home_screen.dart';

class WaterSupply extends StatelessWidget {
  const WaterSupply({super.key});

  @override
  Widget build(BuildContext context) {
     String? selectedGender;

  List<String> genderOptions = ['Male', 'Female', 'Other'];
    
  String? selectedWard;

  List<String> WardOptions = ['1', '2', '3','4', '5', '6','7', '8', '9','10', '11', '12'];

     double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor:  Colors.grey.shade100,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50 ,
                  width:deviceWidth ,
                 
                      
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Water Supply",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:  Color.fromARGB(
                                                        233, 0, 130, 4) ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                           onTap: () {
                                              Navigator.push(context,MaterialPageRoute(builder: (_)=>BottomBarScreen()) );
                                            },
                        child: Icon(Icons.arrow_back,size: 40,color: Color.fromARGB(
                                                        233, 0, 130, 4)  ,)),
                    ),
                  ],),
                ),
            
                Text("Upcoming Events",style: TextStyle(fontWeight: FontWeight.bold,color:  Color.fromARGB(
                                                        233, 0, 130, 4),fontSize: 20),),
            
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: deviceHeight*0.20,
                                                          
                                                          
                                                            width: deviceWidth*0.90,
                                                           decoration: BoxDecoration(
                                                             color: Colors.white,
                                                             borderRadius: BorderRadius.circular(20)
                                                           ),
                                                          
                                                          ),
                                                        ),
            
                                                        SizedBox(
                                                          height: 20,
                                                        ),
            
                                                         Text(" Activities",style: TextStyle(fontWeight: FontWeight.bold,color:  Color.fromARGB(
                                                        233, 0, 130, 4),fontSize: 20),),
            
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            height: deviceHeight*0.20,
                                                          
                                                          
                                                            width: deviceWidth*0.90,
                                                           decoration: BoxDecoration(
                                                             color: Colors.white,
                                                             borderRadius: BorderRadius.circular(20)
                                                           ),
                                                          
                                                          ),
                                                        ),
            
                                                        SizedBox(
                                                          height: 10,
                                                        ),
            
            
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("Please fill up the form to register your complain",style: TextStyle(color:Color.fromARGB(
                                                          233, 0, 130, 4), ),),
                                                        ),

                                                          Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Icon(Icons.person,size: 30,),
                   SizedBox(
                    width: 300,
                    height: 40,
                  
                    
                     child: TextFormField(
                      
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                      
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
                      
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                      
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
                      
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                      
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
                      
                      decoration: InputDecoration(
                        isCollapsed: true,
                        contentPadding: EdgeInsets.all(8),
                       
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
                    
                      isCollapsed: true,
                      isDense: true,
                    ),
                   ),
                   )
                  ],),

                  SizedBox(
                    height: 15,
                  ),

                  Text("Take or Choose a picture",style: TextStyle(color:Color.fromARGB(
                                                          233, 0, 130, 4), ),),


                   SizedBox(
                    height: 20,
                   ) ,

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

              SizedBox(
                height: 20,
              ) , 
Container(
  width: deviceWidth * 0.90,
  height: deviceHeight * 0.20,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),
  child: TextField(
    maxLines: null, // Set maxLines to null for multiline input
    keyboardType: TextInputType.multiline, // Ensure the keyboardType is set to multiline
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      border: InputBorder.none,
      hintText: "Describe your complain"
    ),
  ),
),
SizedBox(
  height: 20,
),

ElevatedButton(onPressed: (){}, child: Text("Send",style: TextStyle(color: Colors.white),),
    style:   ButtonStyle(
    backgroundColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.pink; // Color when pressed
        }
        return  Colors.green; // Default color
      },
    ),
  ),
)



                                 

                  
              ],
            ),
          ),
      
      ),
    );
  }
}