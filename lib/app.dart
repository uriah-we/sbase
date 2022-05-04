import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sbase/app/routes/app_pages.dart';
import 'package:sbase/shared/initial_binding.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      defaultTransition: Transition.fade,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      title: 'WatchCrunch',
      debugShowCheckedModeBanner: false,
    );
  }
}
