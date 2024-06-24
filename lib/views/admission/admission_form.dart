import 'package:codeitv3/utils/routes.dart';
import 'package:codeitv3/utils/texteditingcontroller.dart';
import 'package:codeitv3/widgets/horizontal_gap.dart';
import 'package:codeitv3/widgets/textfield.dart';
import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdmissionForm extends StatelessWidget {
  const AdmissionForm({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Select Course",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(text: "*", style: TextStyle(color: Colors.red)),
                    ])),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.library_add,
                        hintText: "abcd"),
                    const VGap(),
                    const Text(
                      "First Name",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.drive_file_rename_outline,
                        hintText: "First Name"),
                    const VGap(),
                    const Text(
                      "Last Name",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.drive_file_rename_outline,
                        hintText: "Last Name"),
                    const VGap(),
                    const Text(
                      "Address",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.location_on,
                        hintText: "Dharan"),
                    const VGap(),
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.email,
                        hintText: "abc@gmail.com"),
                    const VGap(),
                    const Text(
                      "WhatsApp Number",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.phone,
                        hintText: "9812345678"),
                    const VGap(),
                    const Text(
                      "Qualification",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.menu_book,
                        hintText: "9812345678"),
                    const VGap(),
                    const Text(
                      "Please upload proof of payment",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.file_copy,
                        hintText: "9812345678"),
                    const VGap(),
                    const Text(
                      "Use SCODE257 and get instant cashback.",
                      style: TextStyle(fontSize: 18),
                    ),
                    InputTextWidget(
                        email: AppTextEditingController.name,
                        keyboardType: TextInputType.name,
                        prefixIcon: Icons.qr_code,
                        hintText: "9812345678"),
                    const HGap(),
                    MaterialButton(
                      elevation: 0,
                      onPressed: () {
                        Get.toNamed(AppRoute.admission);
                      },
                      textColor: Colors.white,
                      color: Colors.red,
                      child: const Text("Submit"),
                    )
                  ],
                ),
              ),
            )));
  }
}
