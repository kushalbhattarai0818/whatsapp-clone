
import 'package:flutter/cupertino.dart';
import 'package:hamropalika02/models/details_models.dart';
import 'package:hamropalika02/services/firebase/firsebase_db_services.dart';

class DetailsViewModel extends ChangeNotifier {

  DetailsViewModel() {
    getAllDetails();
  }
  List<Details> _details = [];
  List<Details> get details => _details;

  FirebaseDb db = FirebaseDb();

  getAllDetails() async {
   _details=await db.getAllDetails();
    notifyListeners();
  }

  updateDetails(Details details,String id)async{
    await db.updateDetails(id,details);
    getAllDetails();
    notifyListeners();
  }
  
  addDetails(Details details)async{
    await db.addDetails(details);
    getAllDetails();
    notifyListeners();
  }

}
