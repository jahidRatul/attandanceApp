import 'package:get/get.dart';

import 'attendance_model_class.dart';

class AttendanceViewModel extends GetxController {
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAttendanceMethod();
  }

  getAttendanceMethod() async {
    AttendanceModelClass tempModel = AttendanceModelClass();
    await tempModel.callApi();
    attendanceModelClass = tempModel;

    update();
  }

  AttendanceModelClass attendanceModelClass = AttendanceModelClass();
}
