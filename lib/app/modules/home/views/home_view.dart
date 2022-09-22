

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:owner_app/app/routes/app_pages.dart';
import 'package:owner_app/app/utils/constants.dart';

import '../controllers/home_controller.dart';

import 'widgets/my_drawer.dart';

class HomeView extends GetView<HomeController> {
  List<Map<String,dynamic>> tiles = [
  {"name": "View Schedule", "icon": Icons.sports_soccer, "route":Routes.VIEW_SCHEDULE},
  {"name": "Monthly Subscription", "icon": Icons.calendar_view_day_rounded, "route":Routes.MONTHLY_SUBSCRIPTION},
  {"name": "Tournament", "icon": Icons.emoji_events, "route":Routes.TOURNAMENTS},
  {"name": "User Feedback", "icon": Icons.reviews_sharp, "route":Routes.USER_FEEDBACK},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Futsal Made Simple(O)"),
        backgroundColor: Colors.green,
      ),
      body: 
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),itemCount: tiles.length, itemBuilder: (context, index){
        return GestureDetector(onTap: (){
          Get.toNamed(tiles[index]["route"]);
        },
          child: Container(
            decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 5, spreadRadius: 2, color: Colors.grey)],borderRadius: BorderRadius.circular(10), color: Colors.white),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(tiles[index]["icon"],size: 50, color: kPrimaryColor,), SizedBox(height: 15,), Text(tiles[index]["name"],textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w500),)],
          )),
        );
      })
      
    );
  }
}
