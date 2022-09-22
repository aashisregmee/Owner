import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:owner_app/app/modules/view_schedule/views/widgets/game_details.dart';

import '../controllers/view_schedule_controller.dart';

class ViewScheduleView extends StatefulWidget {
  const ViewScheduleView({super.key});

  @override
  State<ViewScheduleView> createState() => _ViewScheduleViewState();
}

class _ViewScheduleViewState extends State<ViewScheduleView> {
  List<String> time = [
    "6-7",
    "7-8",
    "8-9",
    "9-10",
    "10-11",
    "11-12",
    "12-13",
    "13-14",
    "14-15",
    "15-16",
    "16-17",
    "17-18",
    "18-19",
    "19-20"
  ];
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Available Times"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: Container(
                // width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/fut.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          // width: 500,
                          height: 100,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  child: Container(
                                    color: Colors.blue.withOpacity(0.2),
                                    width: 80,
                                    height: 35,
                                    child: Center(
                                        child: Text(
                                      "5-6",
                                      style: TextStyle(fontSize: 15),
                                    )),
                                  ),
                                ),
                                Text("Rs 1000")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.all(7),
                          // height: 50,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _value == true
                                  ? Colors.blue.withOpacity(0.7)
                                  : Colors.green),
                          child: Column(
                            children: [
                              Center(
                                child: Text(
                                  _value == true ? "Booked" : "Available",
                                ),
                              ),
                              Switch(
                                  value: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  })
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 10,
                    child: Container(
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/fut.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                // width: 500,
                                height: 100,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Card(
                                        child: Container(
                                          color: Colors.blue.withOpacity(0.2),
                                          width: 80,
                                          height: 35,
                                          child: Center(
                                              child: Text(
                                            time[index],
                                            style: TextStyle(fontSize: 15),
                                          )),
                                        ),
                                      ),
                                      Text("Rs 1000")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin: EdgeInsets.all(7),
                                // height: 50,
                                width: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue.withOpacity(0.7)),
                                child: Column(
                                  children: [
                                    Center(
                                      child: Text(
                                        "Booked",
                                      ),
                                    ),
                                    Switch(
                                        value: false,
                                        onChanged: (value) {
                                          value = !value;
                                        })
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
