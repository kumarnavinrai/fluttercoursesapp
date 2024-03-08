import 'package:flutter/material.dart';

import '../app_style.dart';
import 'app_bar.dart';
import 'certificate_courses.dart';

class Certificate extends StatelessWidget {
  const Certificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title:"My Certificates",showSearchIcon: true, showShoppingIcon: false),
      body:  Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.celebration_rounded, color: Colors.yellow),
                  SizedBox(width: 10,),
                  Text("Get Certified Get Ahead", style: Style.headLineStyle4,),
                ],
              ),
              SizedBox(height: 10,),
              Text("Fast-track your career with World's #1 Online", style: Style.headLineStyle2,),
              SizedBox(height: 20,),
              CertificateCourses(
                imageCert: "https://content.wepik.com/statics/133541436/preview-page0.jpg",
                certTitle: "Certification Courses",
                certDesc: "Get cretified by global certification bodies and deepen your expertise",
              ),
              SizedBox(height: 30,),
              CertificateCourses(
                imageCert: "https://piktochart.com/wp-content/uploads/2022/11/large-158-600x424.jpg",
                certTitle: "Certification Courses",
                certDesc: "Get cretified by global certification bodies and deepen your expertise",
              ),
              SizedBox(height: 30,),
              CertificateCourses(
                imageCert: "https://marketplace.canva.com/EAFIEvneNCM/1/0/1600w/canva-golden-elegant-certificate-of-appreciation-0bN-aLORS9U.jpg",
                certTitle: "Certification Courses",
                certDesc: "Get cretified by global certification bodies and deepen your expertise",
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),

      ),
    );
  }
}
