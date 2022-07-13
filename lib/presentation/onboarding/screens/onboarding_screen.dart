import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          //Updating the current index.
          setState(
            () {
              isLastPage = index == 2;
            },
          );
        },
        children: const [
          OnBoardingPage(
            title: AppStrings.onBoardingTitle1,
            subTitle: AppStrings.onBoardingRandomSubTitle,
            imagePath: AppImageAssets.onBoardingImage1,
          ),
          OnBoardingPage(
            title: AppStrings.onBoardingTitle2,
            subTitle: AppStrings.onBoardingRandomSubTitle,
            imagePath: AppImageAssets.onBoardingImage2,
          ),
          OnBoardingPage(
            title: AppStrings.onBoardingTitle3,
            subTitle: AppStrings.onBoardingRandomSubTitle,
            imagePath: AppImageAssets.onBoardingImage3,
          ),
        ],
      ),
      bottomSheet: isLastPage
          ?
          //Final Page
          Container(
              padding: const EdgeInsets.all(AppPadding.padding16),
              color: AppColors.white,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.size20),
                  ),
                  primary: AppColors.white,
                  backgroundColor: AppColors.primary,
                  minimumSize: const Size.fromHeight(AppSize.size60),
                ),
                child: Text(
                  "Get Started",
                  style: Theme.of(context).textTheme.headline3,
                ),
                onPressed: () async {
                  final preferences = await SharedPreferences.getInstance();
                  preferences.setBool('showHome', true);
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.homeScreenRoute,
                  );
                },
              ),
            )
          :
          // First & Second Pages
          Container(
              height: 70,
              color: AppColors.white,
              padding: const EdgeInsets.symmetric(horizontal: AppSize.size12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Skip Button
                  IndicatorTextButton(
                    label: "Skip",
                    onTap: () {
                      _pageController.jumpToPage(2);
                    },
                  ),
                  //Dots
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: WormEffect(
                        spacing: AppSize.size20,
                        dotColor: AppColors.darkGrey,
                        activeDotColor: AppColors.primary,
                      ),
                      onDotClicked: (index) => _pageController.animateToPage(
                        index,
                        duration: const Duration(
                          milliseconds: AppDuration.duration500,
                        ),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  //Next Button
                  IndicatorTextButton(
                    label: "Next",
                    onTap: () {
                      _pageController.nextPage(
                        duration: const Duration(
                          milliseconds: AppDuration.duration500,
                        ),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
