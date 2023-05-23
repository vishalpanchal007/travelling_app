import 'package:flutter/material.dart';
import 'package:traveling_app/app_large_text.dart';
import 'package:traveling_app/app_text.dart';
import 'package:traveling_app/color.dart';
import 'package:traveling_app/home_page.dart';
import 'package:traveling_app/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['hill.jpg', 'trek.jpg', 'alone.jpg'];
  List texts = [
    'Trips',
    'Guidance',
    'Awesome',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: texts[index]),
                        AppText(
                          text: 'Mountain',
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: 250,
                            child: AppText(
                              text:
                                  'Mountain hikes give you an incredible sense of freedom along with endurance text',
                              size: 16,
                              color: AppColors.textColor2,
                            )),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Container(
                            width: 200,
                            child: Row(
                              children: [
                                ResponseButton(
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 4),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == indexDots
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.3)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
