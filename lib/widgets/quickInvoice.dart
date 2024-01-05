import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/User_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/tiltl_text_field.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import 'latest_transaction.dart';
import 'latest_transaction_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 12,
        ),
        LatestTransaction(),
        QuickInvoiceForm(),
      ],
    ));
  }
}

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              title: 'Add more details',
              backgroundColor: Colors.transparent,
              textColor: Color(0xFF4EB7F2),
            )),
            SizedBox(width: 24,),
            Expanded(
                child: CustomButton(
              title: 'Send Money',
            )),
          ],
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgroundColor, required this.title, this.textColor});

  final Color? backgroundColor;
  final Color? textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            backgroundColor: backgroundColor ?? const Color(0xFF4DB7F2),
          ),
          onPressed: () {},
          child: Text(
            title,
            style: AppStyles.styleSemiBold18.copyWith(color: textColor),
          )),
    );
  }
}
