import 'package:codeitv3/model/upcoming_course.dart';
import 'package:codeitv3/utils/api.dart';
import 'package:flutter/material.dart';

class UpcomingClassServiec {
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
}
