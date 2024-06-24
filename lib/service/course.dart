import 'package:codeitv3/model/categories.dart';
import 'package:codeitv3/model/enquery.dart';
import 'package:codeitv3/model/syllabus.dart';
import 'package:codeitv3/model/popular_course.dart';
import 'package:codeitv3/model/upcoming_course.dart';
import 'package:codeitv3/utils/api.dart';
import 'package:flutter/material.dart';

class CourseService {
  //get popular courses
  static Future getPopularCourses() async {
    try {
      var response = await Api.dio.get("popular-courses"); //popular-courses

      if (response.statusCode == 200) {
        return PopularCoursesModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

  //get  upcoming courses
  static Future getUpcomingClass() async {
    try {
      var response = await Api.dio.get("upcoming-classes"); //popular-courses

      if (response.statusCode == 200) {
        return UpcomingClass.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

  // Get Syllabus
  static Future getSyllabus(slug) async {
    try {
      var response = await Api.dio.get("course-syllabus/$slug");

      if (response.statusCode == 200) {
        return SyllabusModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

//get courses categories
  static Future getCategory() async {
    try {
      var response = await Api.dio.get("categories");
      if (response.statusCode == 200) {
        return CategoriesModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

//categories wise courses
  static Future getCoursesByCategory(slug) async {
    try {
      var response = await Api.dio.get("category-courses/$slug");

      if (response.statusCode == 200) {
        return PopularCoursesModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

//categories wise courses
  static Future postEnquery(Map data) async {
    try {
      var response = await Api.dio.post("course-enquiry");

      if (response.statusCode == 200) {
        return EnqueryModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      debugPrint("$e");
    } finally {
      debugPrint("Connection Closed");
    }
  }

  //search_coursesf
  static Future searchCourse(query, pageNumber) async {}

  //Enqiry
  // static Future postEnquiry(Map data) async {
  //   try {
  //     var response = await Api.dio.post("course-enquiry");
  //     if (response.statusCode==200){
  //       return
  //     }
  //   } catch (e) {}
  // }
}
