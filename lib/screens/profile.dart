import 'dart:ui';

import 'package:barber_app/app_style.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:"Account",showSearchIcon: false, showShoppingIcon: false),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[600],
              child: Text("R", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: whiteColor),),
            ),
            title: Text("Rohit Sharma", style: Style.headLineStyle3.copyWith(fontWeight: FontWeight.bold),),
            subtitle: Text("rohitsharma123@gmail.com", style: Style.headLineStyle2.copyWith(fontWeight: FontWeight.bold),),
            trailing: IconButton(onPressed: (){ print("Edit Profile"); },icon: Icon(Icons.edit)),
          ),
          SizedBox(height: 10,),
          Container(height: 12, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.file_download_outlined, color: blackColor,),
            title: const Text("Manage Dowenload"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.messenger_outline_outlined, color: blackColor,),
            title: const Text("Refer and Learn"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.link_outlined, color: blackColor,),
            title: const Text("Connected Account"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.star_border_purple500_outlined, color: blackColor,),
            title: Text("Rate App"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.share_outlined, color: blackColor,),
            title: Text("Share AI App"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.contact_page_outlined, color: blackColor,),
            title: Text("Contact Us"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.privacy_tip_outlined, color: blackColor,),
            title: Text("Privacy Policy"),
            trailing: Icon(Icons.arrow_forward_ios,size: 18,),
          ),
          Container(height: 2, color: blueDivider,),
          ListTile(
            leading: Icon(Icons.logout_outlined, color: blackColor,),
            title: Text("Sign Out"),

          ),
          Container(height: 20, color: blueDivider,),
          Container(color: blueDivider,child: Center(child: Text("Version 1.0.1", style: Style.headLineStyle2.copyWith(color: greyColor),),),),
          Expanded(child: Container(color: blueDivider,))

        ],
      ),
    );
  }
}
