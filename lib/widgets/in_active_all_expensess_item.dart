import 'package:flutter/material.dart';

import '../models/all_expenses_item_header_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allExpensesItemHeaderModel,
  });

  final AllExpensesItemHeaderModel allExpensesItemHeaderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground:  const Color(0xFFFAFAFA),
            image: allExpensesItemHeaderModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemHeaderModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemHeaderModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemHeaderModel.price,
            style: AppStyles.styleSemiBold24,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensesItemHeaderModel,
  });

  final AllExpensesItemHeaderModel allExpensesItemHeaderModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            image: allExpensesItemHeaderModel.image,
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemHeaderModel.title,
            style: AppStyles.styleMedium16.copyWith(
              color: Colors.white
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemHeaderModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: Color(0xFFFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemHeaderModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
                color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}