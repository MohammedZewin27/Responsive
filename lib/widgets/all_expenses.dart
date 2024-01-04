import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/widgets/all_expenssess.dart';

import '../models/all_expenses_item_header_model.dart';
import 'all_expenses_header.dart';
import 'all_expensess_item_list_view.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child: Column(
      children: [
        AllExpensesHeader(),
        SizedBox(
          height: 16,
        ),
        AllExpensessItemListView(),
        // AllExpensess(
        //     allExpensesItemHeaderModel: AllExpensesItemHeaderModel(
        //         image: Assets.imagesIncaome,
        //         title: 'Expenses',
        //         date: 'April 2022',
        //         price: r'$20,129'))
      ],
    ),);
  }
}




