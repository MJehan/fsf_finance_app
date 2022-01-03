import 'package:cloud_firestore/cloud_firestore.dart';

class Database{
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  initiliase()
  {
    _firestore = FirebaseFirestore.instance;
  }
  Future<List?> read() async
  {
    QuerySnapshot querySnapshot;
    List docs = [];
    try{
      querySnapshot = await _firestore.collection('ticket_data ').get();
      if(querySnapshot.docs.isNotEmpty)
      {
        for(var doc in querySnapshot.docs.toList())
        {
          Map a = {
            "id" :doc.id,
            "name" : doc['ticket_data'],
            "code" : doc['user_id'],
          };
          docs.add(a);
        }
        return docs;
      }
    }
    catch(e)
    {
      print(e);
    }
    return null;
  }
}