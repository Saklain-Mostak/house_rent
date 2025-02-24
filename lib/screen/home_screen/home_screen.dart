import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ird_foundation/screen/home_screen/home_page/home_page.dart';
import 'package:ird_foundation/screen/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      angle: 0,
      controller: ZoomDrawerController(),
      menuScreen: const MenuDrawer(),
      mainScreen: const HomePage(),
      clipMainScreen: true,
      menuScreenTapClose: false,
      menuScreenWidth: double.maxFinite,
      menuScreenOverlayColor: const Color(0xFF0A8ED9),
      //mainScreenOverlayColor: Colors.white,
      mainScreenTapClose: true,
      mainScreenScale: 0.2,
      mainScreenAbsorbPointer: true,
      borderRadius: 16,
    );
  }
}
