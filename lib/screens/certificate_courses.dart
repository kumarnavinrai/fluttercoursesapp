import 'package:flutter/material.dart';

import '../app_style.dart';

class CertificateCourses extends StatelessWidget {

  final String imageCert;
  final String certTitle;
  final String certDesc;

  const CertificateCourses({super.key, required this.imageCert, required this.certTitle, required this.certDesc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imageCert),

                    )

                ),
              ),
              Positioned(
                  bottom: 0, left: 20, right: 20,
                  child: SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 3,
                      color: whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: Padding(padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(certTitle, style: Style.headLineStyle4,),
                            SizedBox(height: 10,),
                            Text(certDesc, textAlign: TextAlign.center, style: Style.headLineStyle2,)
                          ],
                        ),
                      ),
                    ),
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
