
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/User_info_model.dart';
import '../utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.item,
        });


  final UserInfoModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(item.image),
          title: Text(
            item.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            item.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}