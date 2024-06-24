import 'package:codeitv3/controller/course.dart';
import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/utils/texteditingcontroller.dart';
import 'package:codeitv3/widgets/textfield.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class EnqueryForm extends StatelessWidget {
  EnqueryForm({super.key});
  var enqueryController = Get.find<CourseController>();
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> key = GlobalKey<FormState>();
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: RichText(
                text: const TextSpan(children: <InlineSpan>[
                  TextSpan(text: "Admission Form"),
                ]),
              ),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RichText(
                      //     text: const TextSpan(children: [
                      //   TextSpan(
                      //       text: "Select Course",
                      //       style: TextStyle(color: Colors.black)),
                      //   TextSpan(
                      //       text: "*", style: TextStyle(color: Colors.red)),
                      // ])),
                      // InputTextWidget(
                      //     email: AppTextEditingController.name,
                      //     keyboardType: TextInputType.name,
                      //     prefixIcon: Icons.library_add,
                      //     hintText: "abcd"),
                      const VGap(),
                      const Text(
                        "First Name",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.fname,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "First Name"),
                      const VGap(),
                      const Text(
                        "address",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.address,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "Address"),
                      const VGap(),
                      const Text(
                        "contact",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.contact,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "contact"),
                      const VGap(),
                      const Text(
                        "class_type",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.classtype,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "class_type"),
                      const VGap(),
                      const Text(
                        "message",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.message,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "message"),
                      const VGap(),
                      const Text(
                        "course_id",
                        style: TextStyle(fontSize: 18),
                      ),
                      InputTextWidget(
                          email: AppTextEditingController.courseid,
                          keyboardType: TextInputType.name,
                          prefixIcon: Icons.drive_file_rename_outline,
                          hintText: "course_id"),
                      MaterialButton(
                        elevation: 0,
                        onPressed: () {
                          if (key.currentState!.validate()) {
                            Map data = {
                              "name": AppTextEditingController.fname.text,
                              "address": AppTextEditingController.address.text,
                              "contact": AppTextEditingController.contact.text,
                              "class_type":
                                  AppTextEditingController.classtype.text,
                              "message": AppTextEditingController.message.text,
                              "course_id":
                                  AppTextEditingController.courseid.text
                            };
                            enqueryController.postEnquery(data);
                            Get.toNamed(AppRoute.enquery);
                          }
                        },
                        textColor: Colors.white,
                        color: Colors.red,
                        child: const Text("Submit"),
                      ),
                    
                    ],
                  ),
                ),
              ),
            )));
  }
}

// --data '{
//     "name": "James Gem",
//     "address": "Dharan",
//     "contact": "9812345678",
//     "class_type": "online",
//     "message": "yiyi",
//     "status": "Pending",
//     "course_id": "50"
// }'