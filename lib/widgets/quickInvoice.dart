import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/User_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 12,
        ),

        LatestTransaction()
      ],
    ));
  }
}

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
          items.map((e) => IntrinsicWidth(child: UserInfoListTile(item: e))).toList()

        ,
      ),
    );
    
    
    // return SizedBox(
    //   height:80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: UserInfoListTile(item: items[index]));
    //     },
    //   ),
    // );
    //
    
  }
}
