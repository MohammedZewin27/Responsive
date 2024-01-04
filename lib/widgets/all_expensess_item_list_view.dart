import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/all_expenses_item_header_model.dart';
import 'all_expenssess.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});



  @override
  State<AllExpensessItemListView> createState() => _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
   final items = const[
     AllExpensesItemHeaderModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
     AllExpensesItemHeaderModel(
        image: Assets.imagesIncaome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
     AllExpensesItemHeaderModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];


   int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
          int index = e.key;
          var item = e.value;
          if (index == 1) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
           updateIndex(index);
         },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: AllExpensessItems(
                    allExpensesItemHeaderModel: item,
                    isSelected: selectedIndex==index,
                  ),
                ),
              ),
            );
          } else {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensessItems(
                    allExpensesItemHeaderModel: item,
                    isSelected: selectedIndex==index,
                  ),
              ),
            );
          }
        }).toList());
  }

  updateIndex(int index) {

    setState(() {
      selectedIndex=index;
    });
  }
}