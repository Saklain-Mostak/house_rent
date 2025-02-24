import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ird_foundation/utils/operation/constant_image_icon.dart';

class HomePageUpperSection extends StatelessWidget {
  const HomePageUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                    color: const Color(0xFF828282),
                    fontSize: 12.sp,
                    fontFamily: 'Raleway',
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Jakarta',
                      style: TextStyle(
                        fontSize: 20.sp, // Added .sp for scalability
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SvgPicture.asset(ic_arrow_down),
                  ],
                ),
              ],
            ),
            SvgPicture.asset(IC_Notification),
          ],
        ),
        SizedBox(height: 20.h),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible( 
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF6F6F6),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search address, or near you',
                  hintStyle: TextStyle(
                    color: const Color(0xFF848484),
                    fontSize: 12.sp, 
                    fontFamily: 'Raleway',
                  ),
                  prefixIcon: SvgPicture.asset(ic_search),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            GestureDetector(
              // ignore: avoid_print
              onTap: () => print("Filter tapped"),
              child: SvgPicture.asset(ic_filter),
            ),
          ],
        ),
      ],
    );
  }
}