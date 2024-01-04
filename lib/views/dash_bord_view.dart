import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';

import '../widgets/dashbors_layout.dart';

class DashBordView extends StatelessWidget {
  const DashBordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout:(context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout:(context) => const DashboardDeskTopLayout()),
    );
  }
}
