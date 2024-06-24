import 'package:codeitv3/controller/course.dart';
import 'package:codeitv3/utils/color.dart';
import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/widgets/horizontal_gap.dart';
import 'package:codeitv3/widgets/shimmer.dart';
import 'package:codeitv3/widgets/upcomingcard.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CourseDetail extends StatelessWidget {
  CourseDetail({
    super.key,
  }) : super();

  var courseController = Get.find<CourseController>();
  // bool status = false;

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.brandColor,
          foregroundColor: Colors.white,
          title: Text(data["title"]),
        ),
        body: Obx(() {
          if (courseController.loading.value == true) {
            return const ShimmereffetForDetailed();
          } else {
            //// Initialize expansion status list

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Image.network(
                      "${courseController.course.value.data!.featured}",
                      fit: BoxFit.fill,
                    ),
                  ),
                  // const VGap(),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                Get.toNamed(AppRoute.enquery);
                              },
                              textColor: AppColor.redColor,
                              color: const Color.fromRGBO(221, 74, 42, .1),
                              child: const Text("Enquiry"),
                            ),
                            const HGap(),
                            MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                Get.toNamed(AppRoute.admission);
                              },
                              textColor: Colors.white,
                              color: Colors.red,
                              child: const Text("Get Admissions"),
                            )
                          ],
                        ),
                        //Course overview
                        Card(
                          elevation: 0,
                          color: AppColor.cardColor,
                          child: Container(
                            decoration: BoxDecoration(
                                // color: AppColor.cardColor,
                                borderRadius: BorderRadius.circular(8)),
                            width: Get.size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  HtmlWidget(
                                      "${courseController.course.value.data!.description}"),
                                  const VGap(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Duration:${courseController.course.value.data!.duration}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Fee:${courseController.course.value.data!.price}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(width: 4.0),
                                          Text(
                                            "${courseController.course.value.data!.costPrice}",
                                            style: const TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //What you will learn
                        Card(
                          elevation: 0,
                          color: AppColor.cardColor,
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "What you will learn:",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: courseController
                                        .whatYouWillLearn.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.code,
                                            color: AppColor.brandColor,
                                            size: 16,
                                          ),
                                          const HGap(),
                                          Expanded(
                                            child: Text(
                                                "${courseController.whatYouWillLearn[index]}"),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Materials included
                        Card(
                          elevation: 0,
                          color: AppColor.cardColor,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Materials included:",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: courseController
                                        .materialIncluded.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.grade_outlined,
                                            color: AppColor.brandColor,
                                            size: 16,
                                          ),
                                          const HGap(),
                                          Expanded(
                                            child: Text(
                                                "${courseController.materialIncluded[index]}"),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Requirement
                        Card(
                          elevation: 0,
                          color: AppColor.cardColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Requirement:",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        courseController.requirement.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.create,
                                            color: AppColor.brandColor,
                                            size: 16,
                                          ),
                                          const HGap(),
                                          Expanded(
                                            child: Text(
                                                "${courseController.requirement[index]}"),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        ///

                        //expansiontile
                        Card(
                          color: AppColor.cardColor,
                          elevation: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 8),
                                child: Text(
                                  "Syllabus:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: courseController
                                      .course.value.data!.courseBuilds.length,
                                  itemBuilder: (context, index) {
                                    return ExpansionTile(
                                      onExpansionChanged: (a) {},
                                      backgroundColor: Colors.white,
                                      title: Text(
                                          "${courseController.course.value.data!.courseBuilds[index].topic}"),
                                      trailing: const Icon(Icons.add_circle),
                                      children: [
                                        SizedBox(
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              itemCount: courseController
                                                  .course
                                                  .value
                                                  .data!
                                                  .courseBuilds[index]
                                                  .courseLessons
                                                  .length,
                                              itemBuilder: (contex, index2) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10,
                                                      vertical: 8),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Icon(
                                                        Icons.check_circle,
                                                        size: 16,
                                                        color:
                                                            AppColor.brandColor,
                                                      ),
                                                      const HGap(),
                                                      Expanded(
                                                        child: Text(
                                                            "${courseController.course.value.data!.courseBuilds[index].courseLessons[index2].lesson}"),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                        )
                                      ],
                                    );
                                  }),
                            ],
                          ),
                        ),

                        //similar courses
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 0,
                            color: AppColor.cardColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Similar courses:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 250,
                                  width: Get.size.width,
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: courseController
                                          .course.value.data!.similar.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            courseController.getSyllabus(
                                                courseController
                                                    .course
                                                    .value
                                                    .data!
                                                    .similar[index]
                                                    .courseSlug);
                                            Get.toNamed(AppRoute.coursedetail,
                                                arguments: {
                                                  "title": courseController
                                                      .course
                                                      .value
                                                      .data!
                                                      .similar[index]
                                                      .courseName
                                                });
                                          },
                                          child: Upcomingclass(
                                              imgurl:
                                                  "${courseController.course.value.data!.similar[index].featured}",
                                              coursename:
                                                  "${courseController.course.value.data!.similar[index].courseName}",
                                              duration:
                                                  "15 days${courseController.course.value.data!.similar[index].courseName}"),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }
        }));
  }
}
