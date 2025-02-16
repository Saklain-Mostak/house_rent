import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ird_foundation/comon_widgets/drawer_item.dart';
import 'package:ird_foundation/controller/drawer_item_color_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ColorController colorController = Get.put(ColorController());
    return Scaffold(
        backgroundColor: const Color(0xFF0A8ED9),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 7),
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

                  
                  print("====================Home pressed==============");},
              ),
              const SizedBox(height: 20,),
              DrawerItem(
                index: 1,
                icon: "assets/icon/IC_Profile.svg",
                text: "Profile",
                ontap: () {

                  colorController.changeColor(1);
                  print("==================== Profile pressed==============");
                },
              ),
                    const SizedBox(height: 20,),
              DrawerItem(
                icon: "assets/icon/IC_Location.svg",
                text: "NearBy",
                index: 2,
                ontap: () {
                  colorController.changeColor(2);
                  print("====================Nearby pressed==============");
                },
              ),
            ],
          ),
        ));
  }
}
