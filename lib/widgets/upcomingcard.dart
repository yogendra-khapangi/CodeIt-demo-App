import 'package:codeitv3/utils/size.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Upcomingclass extends StatelessWidget {
  final String? imgurl;
  final String? coursename;
  final String? duration;

  const Upcomingclass({
    @required this.imgurl,
    @required this.coursename,
    @required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        width: AppSize.m10 * 25,
        height: AppSize.m10 * 25,
        decoration: BoxDecoration(
          // color: Colors.yellow,
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "$imgurl",
                fit: BoxFit.cover,
                height: 110,
                width: 300,
              ),
              const VGap(),
              Text(
                "$coursename",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 0.2),
              const Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 16,
                  ),
                  Text(
                    " March 18, 2024",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              // Row(
              //   children: [
              //     Icon(
              //       Icons.calendar_month,
              //       size: 16,
              //     ),
              //     Text(
              //       "$duration",
              //       style: TextStyle(fontSize: 15),
              //     ),
              //   ],
              // ),

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
                            Text("Class Available Time"),
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
      ),
    );
  }
}
