import 'package:codeitv3/model/categories.dart';
import 'package:codeitv3/model/enquery.dart';
import 'package:codeitv3/model/popular_course.dart';
import 'package:codeitv3/model/syllabus.dart';
import 'package:codeitv3/model/upcoming_course.dart';
import 'package:codeitv3/service/course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  var popularCourses = PopularCoursesModel(data: []).obs;
  var upcomingclass = UpcomingClass(data: []).obs;
  var course = SyllabusModel(data: null).obs;
  var categories = CategoriesModel(data: []).obs;
  var coursesByCategory = PopularCoursesModel(data: []).obs;

  var message = EnqueryModel(data: null).obs;

  dynamic whatYouWillLearn = [].obs;
  dynamic materialIncluded = [].obs;
  dynamic requirement = [].obs;

  var loading = false.obs;
  var courseLoading = false.obs;

  var expansionStatus = false.obs;

  Future getPopularCourses() async {
    try {
      courseLoading(true);
      var data = await CourseService.getPopularCourses();

      if (data != null) {
        popularCourses.value = data;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      courseLoading(false);
    }
  }

  Future getUpcomingClass() async {
    try {
      loading(true);
      var data = await CourseService.getUpcomingClass();

      if (data != null) {
        upcomingclass.value = data;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      loading(false);
    }
  }

  Future getSyllabus(slug) async {
    try {
      loading(true);
      var data = await CourseService.getSyllabus(slug);
      if (data != null) {
        course.value = data;

        whatYouWillLearn.value =
            course.value.data!.whatYouWillLearn!.split(",");

        materialIncluded.value =
            course.value.data!.materialIncluded!.split(",");

        requirement.value = course.value.data!.requirements!.split(",");
      } else {}
    } catch (e) {
      debugPrint("$e");
    } finally {
      loading(false);
    }
  }

  Future getCategories() async {
    try {
      loading(true);
      var data = await CourseService.getCategory();
      if (data != null) {
        categories.value = data;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      loading(false);
    }
  }

  Future getCoursesByCategory(slug) async {
    try {
      courseLoading(true);
      var data = await CourseService.getCoursesByCategory(slug);
      if (data != null) {
        popularCourses.value = data;
      } else {
        debugPrint("error");
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      courseLoading(false);
    }
  }

  selectChip(int index) {
    for (int i = 0; i < categories.value.data.length; i++) {
      if (i == index) {
        categories.value.data[i].status =
            true; // Set the selected chip's status to true
      } else {
        categories.value.data[i].status =
            false; // Set all other chips' status to false
      }
    }
  }

  //enquery
  Future postEnquery(Map inquiryData) async {
    try {
      loading(true);
      var data = await CourseService.postEnquery(inquiryData);

      if (data != null) {
        message.value = data;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      loading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getPopularCourses();
    getUpcomingClass();
    getCategories();
  }
}
