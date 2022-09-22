import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/billing_information_controller.dart';

class BillingInformationView extends GetView<BillingInformationController> {
  const BillingInformationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BillingInformationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BillingInformationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
