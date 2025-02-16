// import 'package:get/get.dart';

// class ColorController extends GetxController {
//   RxBool iscontainerColor = false.obs;
//     RxBool isIconTextColor = false.obs;
//      RxInt selectedIndex = (-1).obs;

//   void changeColor(index) {

//     iscontainerColor.value = !iscontainerColor.value;
//     isIconTextColor.value= !isIconTextColor.value;
//     selectedIndex.value=index;
//   }
// }

// import 'package:get/get.dart';

// class ColorController extends GetxController {
//   RxInt selectedIndex = (-1).obs;

//   void changeColor(int index) {
//     selectedIndex.value = index;
//   }
// }

// import 'package:get/get.dart';
// import 'package:flutter/material.dart';

// class ColorController extends GetxController {
//   RxBool isPressed = false.obs;

//   void changeColor() {
//     isPressed.value = !isPressed.value;
//   }

//   Color get containerColor => isPressed.value ? Colors.blue : Colors.white;
//   Color get textColor => isPressed.value ? Colors.white : Colors.blue;
// }

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ColorController extends GetxController {
  RxInt selectedIndex = (-1).obs;

  void changeColor(int index) {
    if (selectedIndex.value == index) {
      selectedIndex.value = -1;
    } else {
      selectedIndex.value = index;
    }
  }

  Color getContainerColor(int index) {
    return selectedIndex.value == index ? Colors.white : Colors.blue;
  }

  Color getTextColor(int index) {
    return selectedIndex.value == index ? Colors.blue : Colors.white;
  }
}
