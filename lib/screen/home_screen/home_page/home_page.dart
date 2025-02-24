// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ird_foundation/utils/operation/drawer_operation.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color(0xFFF9F9F9),
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.all(20.r),
//             child:
//             SingleChildScrollView(
//               physics: const AlwaysScrollableScrollPhysics(),
//               child: Column(
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Location',
//                             style: TextStyle(
//                               color: const Color(0xFF828282),
//                               fontSize: 12.sp,
//                               fontFamily: 'Raleway',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           Row(
//                             children: [
//                                Text(
//                                 'Jakarta',
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20.sp,
//                                   fontFamily: 'Raleway',
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SvgPicture.asset(ic_arrow_down)
//                             ],
//                           )
//                         ],
//                       ),
//                       SvgPicture.asset(IC_Notification)
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20.h,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(
//                         width: 279.w,
//                         height: 48.h,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             fillColor: const Color(0xFFF6F6F6),
//                             filled: true,
//                             border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(10.r)),
//                             hintText: 'Search address, or near you',
//                             hintStyle: const TextStyle(
//                               color: Color(0xFF848484),
//                               fontSize: 12,
//                               fontFamily: 'Raleway',
//                               fontWeight: FontWeight.w400,
//                             ),
//                             prefixIcon: SvgPicture.asset(
//                               ic_search,
//                             ),
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                           onTap: () {
//                           },
//                           child: SvgPicture.asset(ic_filter))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page_middle_section.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page_upper__section.dart';
import 'package:ird_foundation/utils/operation/drawer_operation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> item = ['House', 'Apartment', 'Hotel', 'Villa'];
    final List<String> imageItem = [
      dreamsvulle_house,
      the_holly_house,
      ascot_house,
    ];

    final List<String> houseName = [
      "Ascot House",
      "Dreams Vally House",
      "The Holly House"
    ];
    final List<String> houseWoner = [
      "Jl. Cilandak Tengah",
      "Jl. Sultan Iskandar Muda",
      "Tl.an Iska ndar"
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.r),
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  const HomePageUpperSection(),
                  SizedBox(
                    height: 25.h,
                  ),
                  HomePageMiddleSection(
                      item: item,
                      imageItem: imageItem,
                      houseName: houseName,
                      houseWoner: houseWoner),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best for you',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(
                          color: const Color(0xFF848484),
                          fontSize: 12.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  // ListView.builder(
                  //     scrollDirection: Axis.vertical,
                  //     itemCount: imageItem.length,
                  //     itemBuilder: (_, index) {
                  //       return Row(
                  //         children: [
                  //           Padding(
                  //             padding: EdgeInsets.all(10.sp),
                  //             child: Container(
                  //               width: 78.w,
                  //               height: 78.h,
                  //               clipBehavior: Clip.antiAlias,
                  //               decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.all(
                  //                       Radius.circular(20.r))),
                  //               child: Image.asset(
                  //                 imageItem[index],
                  //                 fit: BoxFit.cover,
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       );
                  //     })
                  
                ],
              )),
        ),
      ),
    );
  }
}
