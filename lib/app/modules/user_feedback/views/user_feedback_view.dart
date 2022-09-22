import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/user_feedback_controller.dart';

class UserFeedbackView extends GetView<UserFeedbackController> {
  const UserFeedbackView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot<Map<String, dynamic>>> _userFeedbackStream = FirebaseFirestore.instance.collection("feedback").orderBy("created").snapshots();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedbacks'),
        centerTitle: true,
      ),
      
      body:StreamBuilder<QuerySnapshot>(stream: _userFeedbackStream, builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot){
        if(snapshot.hasError){
          return Center(child: Text("Something went wrong!"),); 
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.data!.docs.isEmpty){
          return Center(child: Text("No feedbacks!"),);
        }
        return ListView(children: snapshot.data!.docs.map((DocumentSnapshot document){
          Map<String,dynamic> data = document.data()! as Map<String,dynamic>;
          return Card(
          margin: EdgeInsets.all(5),
          child: ListTile(leading: Icon(Icons.feedback),
            title: Text(data["title"]),
            subtitle: Text(data["description"]),
          ),);
        }).toList());
      },)      
    );
  }
}
