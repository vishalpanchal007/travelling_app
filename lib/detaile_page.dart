import 'package:flutter/material.dart';
import 'package:traveling_app/app_button.dart';
import 'package:traveling_app/app_large_text.dart';
import 'package:traveling_app/app_text.dart';
import 'package:traveling_app/color.dart';
import 'package:traveling_app/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedItem = 0;
  int otherNumbers = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image.jpg'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
              top: 310,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppLargeText(
                              text: 'Akagara Trip',
                              color: Colors.black.withOpacity(0.8),
                            ),
                            AppLargeText(
                              text: 'Rwf 20k',
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: AppColors.mainColor,
                            ),
                            AppText(
                              text: 'Rwanda, Akagera',
                              size: 16,
                              color: AppColors.mainColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Wrap(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star_outline,
                                  size: 18,
                                  color: index < gottenStars
                                      ? Colors.orange[200]
                                      : AppColors.textColor2,
                                );
                              }),
                            ),
                            AppText(
                              text: '(4.0)',
                              color: AppColors.textColor2,
                              size: 16,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: 'People',
                          size: 20,
                          color: Colors.black.withOpacity(0.8),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                            text:
                                'This the description details of the products'),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: AppButton(
                                    size: 15,
                                    color: selectedItem == index
                                        ? AppColors.buttonBackground
                                        : Colors.black.withOpacity(0.8),
                                    isIcon: false,
                                    text: (index + 1).toString(),
                                    backgroundColor: selectedItem == index
                                        ? Colors.black.withOpacity(0.8)
                                        : AppColors.buttonBackground,
                                    borderColor: AppColors.buttonBackground),
                              ),
                            );
                          }),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: 'Description',
                          size: 20,
                          color: Colors.black.withOpacity(0.8),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AppText(
                            text:
                                'This the description, You must got to the travel and read the details of the products This the description details of the products This the description details of the products')
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButton(
                      color: AppColors.textColor2,
                      backgroundColor: AppColors.buttonBackground,
                      borderColor: AppColors.buttonBackground,
                      isIcon: true,
                      icon: Icons.favorite_border,
                      size: 60),
                  SizedBox(
                    width: 20,
                  ),
                  ResponseButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
