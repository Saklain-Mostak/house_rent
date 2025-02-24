// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_foundation/comon_widgets/drawer_item.dart';
import 'package:ird_foundation/controller/drawer_item_color_controller.dart';
import 'package:ird_foundation/utils/operation/constant_image_icon.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.put(ColorController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFF0A8ED9),
          body: Padding(
            padding: const EdgeInsets.only(right: 20, left: 7),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  DrawerItem(
                    icon: "assets/icon/IC_Home.svg",
                    text: "Home",
                    index: 0,
                    ontap: () {
                      colorController.changeColor(0);
              
                      print("====================Home pressed==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    index: 1,
                    icon: "assets/icon/IC_Profile.svg",
                    text: "Profile",
                    ontap: () {
                      colorController.changeColor(1);
                      print("==================== Profile pressed==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    icon: IC_Location,
                    text: "NearBy",
                    index: 2,
                    ontap: () {
                      colorController.changeColor(2);
                      print("====================Nearby pressed==============");
                    },
                  ),
              
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Container(
                        height: 1.0,
                        width: 170.0,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
              
                  DrawerItem(
                    index: 3,
                    icon: "assets/icon/IC_Bookmark.svg",
                    text: "Bookmark",
                    ontap: () {
                      colorController.changeColor(3);
                      print(
                          "==================== Profile Bookmark==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    index: 4,
                    icon: "assets/icon/IC_Notification.svg",
                    text: "Notification",
                    ontap: () {
                      colorController.changeColor(4);
                      print(
                          "==================== Notification pressed==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    index: 5,
                    icon: "assets/icon/IC_Message.svg",
                    text: "Messagge",
                    ontap: () {
                      colorController.changeColor(5);
                      print("==================== Message pressed==============");
                    },
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      top: 20,
                      bottom: 20,
                    ),
                    child: Container(
                        height: 1.0,
                        width: 170.0,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                  DrawerItem(
                    index: 6,
                    icon: "assets/icon/IC_Setting.svg",
                    text: "Setting",
                    ontap: () {
                      colorController.changeColor(6);
                      print("==================== Setting pressed==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    index: 7,
                    icon: "assets/icon/IC_Help.svg",
                    text: "Help",
                    ontap: () {
                      colorController.changeColor(7);
                      print("==================== Help pressed==============");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    index: 8,
                    icon: "assets/icon/IC_Logout.svg",
                    text: "Logout",
                    ontap: () {
                      colorController.changeColor(8);
                      print("==================== Logout pressed==============");
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
