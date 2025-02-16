// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:ird_foundation/controller/drawer_item_color_controller.dart';

// class DrawerItem extends StatelessWidget {
//   const DrawerItem({
//     super.key,
//     required this.colorController,
//     required this.iconImage,
//     required this.title,
//     required this.index,
//    // required this.onTap,
//   });

//   final ColorController colorController;
//   final String iconImage;
//   final String title;
//  // final VoidCallback onTap;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     bool isSelected = colorController.selectedIndex.value == index;
//     return GestureDetector(
//         // onTap: () {
//         //   // colorController.changeColor(index);
//         //   onTap();
//         //   if (kDebugMode) {
//         //     print(
//         //         "========================================color chngd**** $index==========d==========");
//         //   }
//         // },
//         child: Obx(() => Container(
//               padding: const EdgeInsets.only(left: 20),
//               width: 192,
//               height: 40,
//               decoration: BoxDecoration(
//                 color: isSelected ? Colors.white : const Color(0xFF0A8ED9),
//                 borderRadius: const BorderRadius.only(
//                     bottomRight: Radius.circular(20),
//                     topRight: Radius.circular(20)),
//               ),
//               child: Center(
//                 child: ListTile(
//                   contentPadding: EdgeInsets.zero,
//                   leading: SvgPicture.asset(
//                     color: isSelected ? const Color(0xFF0A8ED9) : Colors.white,
//                     iconImage,
//                     width: 24,
//                     height: 24,
//                   ),
//                   title: Text(
//                     title,
//                     style: TextStyle(
//                       color:
//                           isSelected ? const Color(0xFF0A8ED9) : Colors.white,
//                       fontSize: 16,
//                       fontFamily: 'Raleway',
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   dense: true,
//                 ),
//               ),
//             )));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ird_foundation/controller/drawer_item_color_controller.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.text,
    required this.ontap,
     required this.index,
  });

  final String icon;
  final String text;
  final VoidCallback ontap;
  final int index;

  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.put(ColorController());

    return GestureDetector(
        onTap: ontap,
        child: Obx(
          () => Container(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            width: 192,
            height: 40,
            decoration: BoxDecoration(
              color: colorController.getContainerColor(index),
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            child: Center(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset(
                  icon,
                  color:colorController.getTextColor(index),
                  width: 24,
                  height: 24,
                ),
                title: Text(
                  text,
                  style: TextStyle(
                    color: colorController.getTextColor(index),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                dense: true,
              ),
            ),
          ),
        ));
  }
}
