import 'package:codeitv3/bindings/course.dart';
import 'package:codeitv3/utils/color.dart';
import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/views/admission/admission_form.dart';
import 'package:codeitv3/views/course/detail.dart';
import 'package:codeitv3/views/enquery/enquery.dart';
import 'package:codeitv3/views/home/home.dart';
import 'package:codeitv3/views/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.brandColor),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColor.bgLight),
      home: const SplashView(),
      initialRoute: AppRoute.splash,
      getPages: [
        GetPage(name: AppRoute.splash, page: () => const SplashView()),
        GetPage(
            name: AppRoute.home,
            page: () => const HomeViews(),
            binding: CourseBindings()),
        GetPage(name: AppRoute.coursedetail, page: () => CourseDetail()),
        GetPage(name: AppRoute.admission, page: () => const AdmissionForm()),
        GetPage(
            name: AppRoute.enquery,
            page: () => EnqueryForm(),
            binding: CourseBindings()),
      ],
    );
  }
}
