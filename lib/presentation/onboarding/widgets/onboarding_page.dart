// ignore_for_file: unused_field

import 'package:e_commerical_app/app/resources/app_padding.dart';
import 'package:flutter/material.dart';

import '../../../app/resources/app_size.dart';

class OnBoardingPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  const OnBoardingPage({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Title
        Padding(
          padding: const EdgeInsets.all(AppPadding.padding8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        const SizedBox(height: AppSize.size12),
        //SubTitle
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.padding20),
          child: Text(
            subTitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const SizedBox(height: AppSize.size60),
        //Image
        Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
