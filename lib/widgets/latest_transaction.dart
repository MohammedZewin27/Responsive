import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView(),
        Divider(
          height: 48,
        )
      ],
    );
  }
}