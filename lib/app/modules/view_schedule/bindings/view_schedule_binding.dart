import 'package:get/get.dart';

import '../controllers/view_schedule_controller.dart';

class ViewScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewScheduleController>(
      () => ViewScheduleController(),
    );
  }
}
