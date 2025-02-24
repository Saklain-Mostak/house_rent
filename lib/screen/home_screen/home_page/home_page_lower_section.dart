import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ird_foundation/utils/operation/constant_image_icon.dart';

class HomePageLowerSection extends StatelessWidget {
  const HomePageLowerSection({
    super.key,
    required this.imageItem,
    required this.houseName,
  });

  final List<String> imageItem;
  final List<String> houseName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 18.h,
        ),
        SizedBox(
          height: 200.h,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: imageItem.length,
            itemBuilder: (_, index) {
              return Padding(
                  padding: EdgeInsets.symmetric(
                    //  horizontal: 20.w,
                    vertical: 5.h,
                  ),
                  child: SizedBox(
                    child: Row(
                      //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.sp)),
                            child: Image.asset(
                              fit: BoxFit.cover,
                              imageItem[index],
                              height: 78.h,
                              width: 100.w,
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              houseName[index],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'Rp. 2.500.000.000 / Year',
                              style: TextStyle(
                                color: const Color(0xFF0A8ED9),
                                fontSize: 12.sp,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(ic_bed),
                                Text(
                                  '6 Bedroom',
                                  style: TextStyle(
                                    color: const Color(0xFF848484),
                                    fontSize: 12.sp,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                SvgPicture.asset(ic_bath),
                                Text(
                                  '4 Bathroom',
                                  style: TextStyle(
                                    color: const Color(0xFF848484),
                                    fontSize: 12.sp,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ));
            },
          ),
        )
      ],
    );
  }
}
