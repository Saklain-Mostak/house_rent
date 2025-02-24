import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page_lower_section.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page_middle_section.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page_upper__section.dart';
import 'package:ird_foundation/utils/operation/constant_image_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> item = ['House', 'Apartment', 'Hotel', 'Villa'];
    final List<String> imageItem = [
      dreamsvulle_house,
      the_holly_house,
      ascot_house,
      orchad_house
    ];

    final List<String> houseName = [
      "Ascot House",
      "Dreams Vally House",
      "The Holly House",
      "Orchad House House"
    ];
    final List<String> houseWoner = [
      "Jl. Cilandak Tengah",
      "Jl. Sultan Iskandar Muda",
      "Tl.an Iska ndar",
      "Tl.an Iska ndar"
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              //physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  const HomePageUpperSection(),
                  SizedBox(
                    height: 18.h,
                  ),
                  HomePageMiddleSection(
                      item: item,
                      imageItem: imageItem,
                      houseName: houseName,
                      houseWoner: houseWoner),
                  SizedBox(
                    height: 18.h,
                  ),
                  HomePageLowerSection(
                      imageItem: imageItem, houseName: houseName)
                ],
              )),
        ),
      ),
    );
  }
}

