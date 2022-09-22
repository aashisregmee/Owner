import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_time_slots_controller.dart';

class AddTimeSlotsView extends GetView<AddTimeSlotsController> {
  const AddTimeSlotsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTimeSlotsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddTimeSlotsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
