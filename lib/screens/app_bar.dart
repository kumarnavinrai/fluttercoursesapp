import 'package:flutter/material.dart';

import '../app_style.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showSearchIcon;
  final bool showShoppingIcon;

  MyAppBar({required this.title, required this.showShoppingIcon, required this.showSearchIcon});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      elevation: 0, automaticallyImplyLeading: false,
      title: Text(title, style: Style.headLineStyle5.copyWith(color: whiteColor),),
      actions: [
        if(showSearchIcon)
          IconButton(
          onPressed: (){}, icon: Icon(Icons.search), color: Colors.white,),
        if (showShoppingIcon)
          IconButton(
          onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined), color: Colors.white,),

      ],
    );
  }
}
