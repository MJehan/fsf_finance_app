import 'package:flutter/material.dart';
import 'db.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

// _signOut() async {
//   await _firebaseAuth.signOut();
// }

class _HomeScreenState extends State<HomeScreen> {
  Database db = Database();
  List docs = [];
  initialise()
  {
    db = Database();
    db.initiliase();
    db.read().then((value) => {
      setState((){
        docs= value!;
      }),
    });
  }

  @override
  void initState()
  {
    super.initState();
    initialise();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: NavDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text('Create New Ticket'),
        ),
        backgroundColor: const Color(0xFF6200EE),
      ),
      backgroundColor: Colors.white,
      body: const Text('Home')



      // ListView.builder(
      //   itemCount: docs.length,
      //   itemBuilder: (BuildContext context, int index){
      //     return Card(
      //       margin: EdgeInsets.all(10),
      //       child: ListTile(
      //         contentPadding: EdgeInsets.only(right: 38, left: 35),
      //         title: Text(docs[index]['_currentAddress']),
      //         trailing: Text(docs[index]['user_id']),
      //       ),
      //     );
      //   }
      // ),
    );
  }
}
