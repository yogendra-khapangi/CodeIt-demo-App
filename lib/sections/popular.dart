import 'package:codeitv3/controller/course.dart';
import 'package:codeitv3/utils/color.dart';
import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/utils/size.dart';
import 'package:codeitv3/widgets/horizontal_gap.dart';
import 'package:codeitv3/widgets/shimmer.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class PopularCourseSection extends StatelessWidget {
  const PopularCourseSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var courseController = Get.find<CourseController>();

    return Obx(() {
      if (courseController.loading.value == true) {
        return const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [Shimmereffet(), VGap(), Shimmereffet()],
          ),
        );
      } else {
        return Column(
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
                    "Popular courses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),

            ///chips👇👇
            // SizedBox(
            //   height: AppSize.m10 * 6,
            //   child: ListView.builder(
            //     itemCount: courseController.categories.value.data.length,
            //     scrollDirection: Axis.horizontal,
            //     physics: const BouncingScrollPhysics(),
            //     itemBuilder: (context, index) {
            //       var category = courseController.categories.value.data[index];

            //       return Row(
            //         children: [
            //           const Chip(label: Text("All")),
            //           const HGap(),
            //           GestureDetector(
            //             onTap: () {
            //               courseController.getCoursesByCategory(category.slug);
            //               courseController.selectChip(index);
            //             },
            //             child: Padding(
            //               padding: EdgeInsets.only(right: AppSize.m4),
            //               child: Chip(
            //                   backgroundColor: category.status == true
            //                       ? AppColor.brandLightColor
            //                       : Colors.white,
            //                   label: Text(
            //                     "${category.name}",
            //                     style: TextStyle(
            //                         color: category.status == true
            //                             ? AppColor.brandColor
            //                             : Colors.black),
            //                   )),
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            // ),
            SizedBox(
              height: AppSize.m10 * 6,
              child: ListView.builder(
                itemCount: courseController.categories.value.data.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var category = courseController.categories.value.data[index];

                  return Row(
                    children: [
                      if (index == 0) // Add "All" chip only for the first item
                        Padding(
                          padding: EdgeInsets.only(right: AppSize.m4),
                          child: GestureDetector(
                            onTap: () {
                              courseController.getPopularCourses();
                              courseController.selectChip(index);
                            },
                            child: Chip(
                              backgroundColor: category.status == true
                                  ? Colors.white
                                  : Colors.white,
                              label: const Text("All"),
                            ),
                          ),
                        ),
                      const HGap(),
                      GestureDetector(
                        onTap: () {
                          courseController.getCoursesByCategory(category.slug);
                          courseController.selectChip(index);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: AppSize.m4),
                          child: Chip(
                            backgroundColor: category.status == true
                                ? AppColor.brandLightColor
                                : Colors.white,
                            label: Text(
                              "${category.name}",
                              style: TextStyle(
                                color: category.status == true
                                    ? AppColor.brandColor
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            //card show
            courseController.courseLoading.value == true
                ? const Column(
                    children: [Shimmereffet(), VGap(), Shimmereffet()],
                  )
                : MasonryGridView.builder(
                    mainAxisSpacing: AppSize.m8,
                    crossAxisSpacing: AppSize.m8,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount:
                        courseController.popularCourses.value.data.length,
                    gridDelegate:
                        const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      var course =
                          courseController.popularCourses.value.data[index];
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: GestureDetector(
                          onTap: () {
                            courseController.getSyllabus(course.courseSlug);
                            Get.toNamed(AppRoute.coursedetail,
                                arguments: {"title": course.courseName!});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(bottom: AppSize.m4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //image Box
                                  SizedBox(
                                    height: AppSize.m10 * 10,
                                    width: AppSize.m10 * 20,
                                    child: Image.network(
                                      "${course.featured}",
                                      fit: BoxFit.fill,
                                      loadingBuilder: (BuildContext context,
                                          Widget child,
                                          ImageChunkEvent? loadingProgress) {
                                        if (loadingProgress == null) {
                                          return child;
                                        }
                                        return Center(
                                          child: CircularProgressIndicator(
                                            value: loadingProgress
                                                        .expectedTotalBytes !=
                                                    null
                                                ? loadingProgress
                                                        .cumulativeBytesLoaded /
                                                    loadingProgress
                                                        .expectedTotalBytes!
                                                : null,
                                          ),
                                        );
                                      },
                                    ),
                                  ),

                                  //
                                  const VGap(),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSize.p12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${course.courseName}",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "${course.price}",
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              width: AppSize.m10,
                                            ),
                                            course.costPrice == null
                                                ? const SizedBox()
                                                : Text(
                                                    "${course.costPrice}",
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.red,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                    ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                          ],
                                        ),
                                        const VGap(),
                                        course.enrolledStudents != null
                                            ? Row(
                                                children: [
                                                  Text(
                                                    "Students: ${course.enrolledStudents}",
                                                    style: const TextStyle(
                                                        fontSize: 14),
                                                  ),
                                                  const Icon(
                                                      Icons.arrow_forward)
                                                ],
                                              )
                                            : const SizedBox()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),

            const SizedBox(
              height: 10,
            ),
            //button
            TextButton(
                onPressed: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "View more..",
                      style: TextStyle(color: AppColor.brandColor),
                    ),
                    Icon(
                      Icons.wifi_protected_setup,
                      size: 16,
                    )
                  ],
                ))
          ],
        );
      }
    });
  }
}
