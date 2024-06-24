import 'package:codeitv3/sections/popular.dart';
import 'package:codeitv3/sections/upcoming.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return CustomScrollView(
            slivers: [
              // SliverAppBar(
              //     backgroundColor: Colors.white,
              //     title: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         SizedBox(
              //           width: Get.size.width * .4,
              //           child: Image.asset("assets/images/Logo.png",
              //               fit: BoxFit.fill),
              //         ),
              //         const Icon(
              //           Icons.search,
              //           size: 40,
              //         )
              //       ],
              //     ),
              //     stretch: true,
              //     pinned: true,
              //     floating: false,
              //     expandedHeight: constraints.maxHeight > 780
              //         ? AppSize.m10 * 36
              //         : AppSize.m10 * 32,
              //     flexibleSpace: FlexibleSpaceBar(
              //         background: Column(
              //       children: [
              //         //Hero sections
              //         Padding(
              //           padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
              //           child: SizedBox(
              //             width: Get.size.width,
              //             height: 110,
              //             child: Image.asset("assets/images/Hero Image.png",
              //                 fit: BoxFit.fill),
              //           ),
              //         ),

              //         const VGap(),

              //         //RichText
              //         Padding(
              //           padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
              //           child: RichText(
              //             text: TextSpan(children: [
              //               const TextSpan(
              //                   text: 'Inspiring Youth Since 2017\n',
              //                   // text: '${MediaQuery.of(context).size.height}\n',

              //                   style: TextStyle(
              //                     color: AppColor.brandColor,
              //                     fontSize: 20,
              //                   )),
              //               TextSpan(
              //                   text:
              //                       "At Code IT, we understand that financial barriers should\n",
              //                   style: TextStyle(
              //                       color: const Color.fromARGB(
              //                           255, 113, 110, 110),
              //                       height: AppSize.m4 - 2)),
              //               const TextSpan(
              //                   text: "never hinder your educational journey.",
              //                   style: TextStyle(
              //                       color: Color.fromARGB(255, 113, 110, 110)))
              //             ]),
              //           ),
              //         ),
              //         //Share button
              //         Padding(
              //           padding: const EdgeInsets.all(10.0),
              //           child: Row(
              //             children: [
              //               Button(
              //                 height: AppSize.m10 * 3.5,
              //                 width: AppSize.m10 * 16,
              //                 color: Colors.green,
              //                 text: "Connect on Whatsapp",
              //               ),
              //               const HGap(),
              //               Button(
              //                 height: AppSize.m10 * 3.5,
              //                 width: AppSize.m10 * 16,
              //                 color: AppColor.brandColor,
              //                 text: "Connect on Facebook",
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ))),

              SliverList(
                  delegate: SliverChildBuilderDelegate(
                ((BuildContext contex, int index) {
                  return const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        0,
                        0,
                        25,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //top sections

                          //Upcoming Classes
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Upcoming(),
                          ),
                          //popular course
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: PopularCourseSection(),
                          ),
                          //load more button
                        ],
                      ),
                    ),
                  );
                }),
                childCount: 1,
              ))
            ],
          );
        }),
      ),
    );
  }
}
