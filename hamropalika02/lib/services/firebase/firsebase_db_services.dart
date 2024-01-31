

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hamropalika02/models/details_models.dart';

class FirebaseDb {
  FirebaseFirestore db = FirebaseFirestore.instance;

  addDetails(Details details) async {
    await db.collection('details').add(details.toJson(details));
  }
    updateDetails(String id,Details details)async{
      await db.collection('details').doc(id).update(details.toJson(details));
    }
   
  

  Future<List<Details>> getAllDetails() async {
    List<Details> detail = [];
    await db.collection('details').get().then((collection) {
      for (var doc in collection.docs) {
        Map<String, dynamic> jsonData = doc.data();
        jsonData['id'] = doc.id;
        detail.add(Details.fromjson(jsonData));
      }
    }).onError((error, stackTrace) {
      print("Unable to get data $error and the stackTrace is $stackTrace");
    });

    return detail;
  }
}
