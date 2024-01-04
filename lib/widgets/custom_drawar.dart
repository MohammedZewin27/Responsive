import 'package:flutter/material.dart';
import 'package:responsive_dash_board/generated/assets.dart';
import 'package:responsive_dash_board/models/User_info_model.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
            child: UserInfoListTile(item:UserInfoModel(image: Assets.imagesAvatar3, title: 'Lekan Okeowo', subTitle: 'demo@gmail.com') ,
                ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),


          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                DrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesSetting, title: 'Setting system'),
                    isActive: false),
                DrawerItem(
                    drawerItem: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout account'),
                    isActive: false),
                SizedBox(height: 48,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
