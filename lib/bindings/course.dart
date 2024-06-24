import 'package:codeitv3/controller/course.dart';
import 'package:get/get.dart';

class CourseBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(CourseController());
  }
}
