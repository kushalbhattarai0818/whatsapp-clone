import 'package:flutter/material.dart';
import 'package:hamropalika02/models/details_models.dart';
import 'package:hamropalika02/services/firebase/firsebase_db_services.dart';

class ProfileViewModel extends ChangeNotifier {
  String? _gender;

  int? _ward;

  FirebaseDb db=FirebaseDb();

  // ProfileViewModel(this._gender, this._ward);

  String? get gender => _gender;
  setselectedgender(String gender) {
    _gender=gender;
    notifyListeners();
     
  }
 

  int? get ward => _ward;
  setselectedward(int ward){
    _ward=ward;
    notifyListeners();
  }

  addDetails(Details details)async{
    await db.addDetails(details);
    // getAllDetails();
    notifyListeners();
  }


  


 
}
