import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

import '../models/all_expenses_item_header_model.dart';
import 'in_active_all_expensess_item.dart';

class AllExpensessItems extends StatelessWidget {
  const AllExpensessItems(
      {super.key,
      required this.allExpensesItemHeaderModel,
      required this.isSelected});

  final AllExpensesItemHeaderModel allExpensesItemHeaderModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(
            allExpensesItemHeaderModel: allExpensesItemHeaderModel)
        : InActiveAllExpensessItem(
            allExpensesItemHeaderModel: allExpensesItemHeaderModel);
  }
}
