import 'package:codeitv3/utils/size.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class Shimmereffet extends StatelessWidget {
  const Shimmereffet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Column(
        children: [
          Container(
            height: AppSize.m10 * 2.6,
            width: Get.size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const VGap(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: AppSize.m10 * 10,
                  width: Get.size.width * .6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                ),
                const VGap(),
                Container(
                  height: AppSize.m10 * 1.5,
                  width: AppSize.m10 * 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const VGap(),
                Container(
                  height: AppSize.m10 * 1.5,
                  width: AppSize.m10 * 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const VGap(),
            const VGap(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300,
                  ),
                  height: AppSize.m10 * 10,
                  width: Get.size.width * .32,
                ),
                const VGap(),
                Container(
                  height: AppSize.m10 * 1.5,
                  width: AppSize.m10 * 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const VGap(),
                Container(
                  height: AppSize.m10 * 1.5,
                  width: AppSize.m10 * 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}

class ShimmereffetForDetailed extends StatelessWidget {
  const ShimmereffetForDetailed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const VGap(),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: Get.size.height * .24,
                width: Get.size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300,
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
            ]),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: Get.size.height * .24,
                width: Get.size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade300,
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
              Container(
                height: AppSize.m10 * 1.5,
                width: AppSize.m10 * 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const VGap(),
            ]),
          ],
        ),
      ),
    );
  }
}
