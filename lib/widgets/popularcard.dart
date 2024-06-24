import 'package:codeitv3/widgets/vertical_gap.dart';
import 'package:flutter/material.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        // width: 250,
        // height: 230,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.35),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://codeit.com.np/storage/01HQWSEZ4353HF3GP91SX32W45.webp",
                fit: BoxFit.cover,
                height: 90,
                width: 200,
              ),
              const VGap(),
              const VGap(),
              const VGap(),
              const Text(
                "Web designing Training",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}
