import 'package:aider/src/common/build_page.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() => isLastPage = index == 2);
        },
        children: [
          buildPage(
              color: Colors.white,
              urlImage: 'lib/assets/images/onboarding_1.png',
              title: 'page1_onboarding_title'.i18n(),
              subtitle: 'page1_onboarding_subtitle'.i18n()),
          buildPage(
              color: Colors.white,
              urlImage: 'lib/assets/images/onboarding_2.png',
              title: 'page2_onboarding_title'.i18n(),
              subtitle: 'page2_onboarding_subtitle'.i18n()),
          buildPage(
              isLastPage: isLastPage,
              color: Colors.white,
              urlImage: 'lib/assets/images/onboarding_3.png',
              title: 'page3_onboarding_title'.i18n(),
              subtitle: 'page3_onboarding_subtitle'.i18n()),
        ],
      ),
      bottomSheet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 32,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.green,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut),
                ),
              ),
            ],
          )),
    );
  }
}
