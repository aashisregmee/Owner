import 'package:get/get.dart';

import '../controllers/add_time_slots_controller.dart';

class AddTimeSlotsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTimeSlotsController>(
      () => AddTimeSlotsController(),
    );
  }
}
