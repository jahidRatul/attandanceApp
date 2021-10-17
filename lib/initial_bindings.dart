import 'package:get/get.dart';

import 'attandence_view_model.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AttendanceViewModel());
  }
}
