import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ird_foundation/utils/operation/drawer_operation.dart';

class HomePageMiddleSection extends StatelessWidget {
  const HomePageMiddleSection({
    super.key,
    required this.item,
    required this.imageItem,
    required this.houseName,
    required this.houseWoner,
  });

  final List<String> item;
  final List<String> imageItem;
  final List<String> houseName;
  final List<String> houseWoner;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 34.h,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: item.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.sp),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16.sp, vertical: 10.sp),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius:
                        BorderRadius.all(Radius.circular(10.r)),
                  ),
                  child: Text(
                    item[index],
                    style: TextStyle(
                      color: const Color(0xFF848484),
                      fontSize: 12.sp,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Near from you',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See more',
                style: TextStyle(
                  color: const Color(0xFF848484),
                  fontSize: 12.sp,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        SizedBox(
          width: double.infinity,
          height: 272.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageItem.length,
              itemBuilder: (_, index) {
                return Stack(children: [
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Container(
                      width: 222.w,
                      height: 272.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(20.r))),
                      child: Image.asset(
                        imageItem[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 9.sp,
                      bottom: 9.sp,
                      left: 9.sp,
                      right: 9.sp,
                      child: Container(
                        width: 222.w,
                        height: 272.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(20.r)),
                          gradient: LinearGradient(
                              colors: [
                                // ignore: deprecated_member_use
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                      )),
                  Positioned(
                      right: 30.sp,
                      top: 30.sp,
                      child: Container(
                        width: 73.w,
                        height: 24.h,
                        padding: EdgeInsets.only(
                            top: 4.sp,
                            left: 8.sp,
                            right: 10.sp,
                            bottom: 4.sp),
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.black
                                // ignore: deprecated_member_use
                                .withOpacity(0.23999999463558197),
                            borderRadius: BorderRadius.all(
                                Radius.circular(20.r))),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(IC_Location),
                            Expanded(
                              child: Text(
                                '1.8km',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      left: 20.sp,
                      bottom: 38.sp,
                      child: Text(
                        houseName[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                  Positioned(
                      left: 20.sp,
                      bottom: 16,
                      child: Text(
                        houseWoner[index],
                        style: TextStyle(
                          color: const Color(0xFFD6D6D6),
                          fontSize: 12.sp,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ]);
              }),
        )
      ],
    );
  }
}
