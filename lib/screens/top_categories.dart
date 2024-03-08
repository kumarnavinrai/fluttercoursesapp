import 'package:flutter/material.dart';

import '../app_style.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: 10,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: const EdgeInsets.all(15),
              height: 70, width: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [lightBlue, whiteBlue]
                ),
                borderRadius: BorderRadius.circular(15),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Software\nDevelopment", style: Style.headLineStyle2,),
                  Image.network("https://cdn-icons-png.flaticon.com/512/5906/5906160.png")
                ],
              ),

            );
          },
        )
    );
  }
}
