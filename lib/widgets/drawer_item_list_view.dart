import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/drawer_item_model.dart';
import 'custom_drawar.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,

  });



  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
int activeIndex=0;
final List<DrawerItemModel> items = [
  DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
  DrawerItemModel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
  DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
  DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,

      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            if(activeIndex !=index){
              setState(() {
                activeIndex=index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItem:items[index], isActive: activeIndex==index,),
          ),
        );
      },
    );
  }
}