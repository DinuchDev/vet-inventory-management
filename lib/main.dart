import 'package:dashboard/widgets/error.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/constants/style.dart';
import 'app/site_layout.dart';
import 'app/modules/authentication/views/authentication_view.dart';
import 'app/routes/app_pages.dart';
import 'app/base_controller/navigation_controller.dart';
import 'app/base_controller/menu_controller.dart' as dashboard_menu_controller;

void main() {
  Get.put(NavigationController());
  Get.put(dashboard_menu_controller
      .MenuController()); // Initialize MenuController here
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: rootRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => const PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(
          name: rootRoute,
          page: () {
            return SiteLayout();
          },
        ),
        GetPage(
          name: authenticationPageRoute,
          page: () => const AuthenticationView(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
