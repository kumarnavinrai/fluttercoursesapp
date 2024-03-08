import 'package:flutter/material.dart';

import 'app_bar.dart';

class MyNotification extends StatelessWidget {
  const MyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:"Notification",showSearchIcon: false, showShoppingIcon: false),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemBuilder: (context, index){
            return ListTile(
                leading: Container(
                  height: 50, width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://clevertap.com/wp-content/uploads/2021/05/Push-Notification-Header.png")
                    )
                  ),
                ),
              title: Text("Looking for AI Engg"),
              subtitle: Text("Learn AI from tronto"),
            );
          },
          separatorBuilder: (context, index){
            return const Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            );
          },
          itemCount: 10)


    );
  }
}
