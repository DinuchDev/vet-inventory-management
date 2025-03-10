import 'package:flutter/cupertino.dart';
import '../base_controller/const_controller.dart';
import '../routes/app_pages.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homePageRoute,
    );
