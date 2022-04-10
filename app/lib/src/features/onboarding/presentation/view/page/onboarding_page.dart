import 'package:aider/src/features/onboarding/presentation/view/widget/build_page.dart';
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
              urlImage: 'lib/assets/images/onboarding_1.png',
              title: 'page1-onboarding-title'.i18n(),
              subtitle: 'page1-onboarding-subtitle'.i18n()),
          buildPage(
              urlImage: 'lib/assets/images/onboarding_2.png',
              title: 'page2-onboarding-title'.i18n(),
              subtitle: 'page2-onboarding-subtitle'.i18n()),
          buildPage(
              isLastPage: isLastPage,
              urlImage: 'lib/assets/images/onboarding_3.png',
              title: 'page3-onboarding-title'.i18n(),
              subtitle: 'page3-onboarding-subtitle'.i18n()),
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
