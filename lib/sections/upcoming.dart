import 'package:codeitv3/controller/course.dart';
import 'package:codeitv3/utils/color.dart';
import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/utils/size.dart';
import 'package:codeitv3/widgets/shimmer.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var upcomingclassController = Get.find<CourseController>();
    return Obx(() {
      if (upcomingclassController.loading.value == true) {
        return const Shimmereffet();
      } else {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppSize.m10 * 3,
              width: Get.size.width,
              color: AppColor.bgLight,
              //listtile
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Upcoming Classes",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            upcomingclassController.upcomingclass.value.data.isEmpty
                ? const Text(
                    "No upcoming classes available right now..",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  )
                : SizedBox(
                    height: AppSize.m10 * 25,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: upcomingclassController
                            .upcomingclass.value.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          var course = upcomingclassController
                              .upcomingclass.value.data[index];
                          return GestureDetector(
                              onTap: () {
                                upcomingclassController
                                    .getSyllabus(course.courseSlug);
                                Get.toNamed(AppRoute.coursedetail,
                                    arguments: {"title": course.courseName!});
                              },
                              child: Container(
                                width: AppSize.m10 * 24,
                                height: AppSize.m10 * 18,
                                decoration: BoxDecoration(
                                  // color: Colors.yellow,
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 120,
                                        width: AppSize.m10 * 24,
                                        child: Image.network(
                                          "${course.image}",
                                          fit: BoxFit.fill,
                                          // color: Colors.red,
                                        ),
                                      ),
                                      const VGap(),
                                      Text(
                                        "${course.courseName}",
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 0.2),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            size: 16,
                                          ),
                                          Text(
                                            "April 10, 24",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      const VGap(),
                                      GestureDetector(
                                        onTap: () {
                                          Get.bottomSheet(
                                              backgroundColor: Colors.white,
                                              SizedBox(
                                                width: Get.size.width,
                                                height: 200,
                                                child: const Column(
                                                  children: [
                                                    Text(
                                                        "Class Available Time"),
                                                  ],
                                                ),
                                              ));
                                        },
                                        child: const Row(
                                          children: [
                                            Icon(
                                              Icons.access_time_rounded,
                                              size: 16,
                                            ),
                                            Text(
                                              " 8:00 pm - 9:30 pm",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Icon(
                                              Icons.more_vert,
                                              size: 16,
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  )
          ],
        );
      }
    });
  }
}
