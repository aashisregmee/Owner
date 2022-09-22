import 'package:get/get.dart';

import '../controllers/billing_information_controller.dart';

class BillingInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BillingInformationController>(
      () => BillingInformationController(),
    );
  }
}
