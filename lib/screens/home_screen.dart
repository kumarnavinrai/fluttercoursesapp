import 'package:barber_app/app_style.dart';
import 'package:barber_app/screens/top_categories.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

import 'app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:"Home", showShoppingIcon: true),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Carousel(
              dotSize: 5,
              dotColor: primary,
              dotBgColor: Colors.transparent,
              images: [
                NetworkImage("https://www.shutterstock.com/image-vector/elearning-banner-online-education-home-260nw-1694176021.jpg"),
                NetworkImage("https://www.ontariovirtualschool.ca/wp-content/uploads/2023-Course-for-University-Admission-Header.png"),
                NetworkImage("https://cdn.elearningindustry.com/wp-content/uploads/2020/08/5-ways-to-improve-your-course-cover-design-1024x575.png"),
                NetworkImage("https://cdn1.careeraddict.com/uploads/article/60468/computer-science-course.jpg")
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: Text("Top Categtory", style: Style.headLineStyle6),
          ),
          const TopCategories(),

          SizedBox(height: 20,),
          Container(height: 12, color: blueDivider,),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [lightTealColor,lightBlue]
              ),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Let's find the right course\nfor you", style: Style.headLineStyle3.copyWith(color: tealColor), ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("Get Recommendations", style: Style.headLineStyle2,),


                    )
                  ],
                ),
                Image.network("https://cdn-icons-png.flaticon.com/512/782/782168.png")
              ],
            ),
          ),
          Container(height: 12, color: blueDivider,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Top Courses", style: Style.headLineStyle6,),
                InkWell(
                    onTap: (){ print("See all"); },
                    child: Text("SEE ALL", style: Style.headLineStyle2.copyWith(color: primary),))
              ],
            ),
          ),
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index){
                return InkWell(
                  onTap: (){ print("on couses tap"); },
                  child: Container(
                    height: 120,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        boxShadow: [BoxShadow(blurRadius: 5, color: grey300)],
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("AI Course", style: Style.headLineStyle4,),
                            Row(
                              children: [
                                Text("4.6", style: Style.headLineStyle2.copyWith(color: greyColor),),
                                SizedBox(width: 5,),
                                Icon(Icons.star, color: Colors.yellow,size: 18,),
                                SizedBox(width: 5,),
                                Text("•"),
                                SizedBox(width: 5,),
                                Text("221k learners", style: Style.headLineStyle2.copyWith(color: greyColor),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.currency_rupee, color: blackColor,),
                                SizedBox(width: 5,),
                                Text("Enroll and win rewards", style: Style.headLineStyle2.copyWith(color: greyColor),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 90, width: 80,
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 0,
                                  child: Container(
                                    height: 80, width: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: const NetworkImage("https://www.shutterstock.com/shutterstock/videos/1081629419/thumb/1.jpg?ip=x480"))
                                    ),
                                  )),
                              Positioned(
                                  bottom: 0,
                                  left: 15, right: 15,
                                  child: Container(
                                    height: 20, width: 50,
                                    decoration: BoxDecoration(
                                        color: lightTealColor,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Center(
                                      child: Text("FREE", style: Style.headLineStyle2.copyWith(color: whiteColor),),
                                    ),
                                  ))
                            ],
                          ),
                        )
                        // Image.network("src")
                      ],
                    ),
                  ),
                );
              })

        ],
      ),
    );
  }
}
