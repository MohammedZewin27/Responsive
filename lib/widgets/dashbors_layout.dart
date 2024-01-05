import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawar.dart';
import 'package:responsive_dash_board/widgets/quickInvoice.dart';

class DashboardDeskTopLayout extends StatelessWidget {
  const DashboardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpenses(),
                  SizedBox(
                    height: 24,
                  ),
                  QuickInvoice()
                ],
              ),
            )),
      ],
    );
  }
}
