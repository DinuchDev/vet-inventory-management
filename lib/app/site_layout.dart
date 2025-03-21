import 'package:flutter/material.dart';
import '../widgets/large_screen.dart';
import '../widgets/side_menu.dart';
import 'helpers/local_navigator.dart';
import 'helpers/reponsiveness.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      // appBar:  topNavigationBar(context, scaffoldKey), // will update this later
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: ResponsiveWidget(
        largeScreen: const LargeScreen(),
        smallScreen: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator(),
        ),
      ),
    );
  }
}
