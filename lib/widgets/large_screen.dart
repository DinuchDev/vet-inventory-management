import 'package:dashboard/widgets/side_menu.dart';
import 'package:flutter/material.dart';
import '../app/helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(child: SideMenu()),
        Expanded(
          flex: 5,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
        )
      ],
    );
  }
}
