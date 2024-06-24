import 'dart:async';

import 'package:codeitv3/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  checkAuth() {
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(AppRoute.enquery);
    });
  }

  @override
  void initState() {
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: Text("Code IT"),
      ),
    ));
  }
}
