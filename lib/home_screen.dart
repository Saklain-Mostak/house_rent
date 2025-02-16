import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:ird_foundation/home_page.dart';
import 'package:ird_foundation/menu_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ZoomDrawer(menuScreen: MenuDrawer(), mainScreen: HomePage());
  }
}
