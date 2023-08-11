import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authantication/controllers/on_boarding_controller.dart';
import 'package:login_flutter_app/src/features/authantication/models/model_on_boarding.dart';
import 'package:login_flutter_app/src/features/authantication/screens/on_boarding/widgets/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key,}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: controller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController: controller.liquidController,
            onPageChangeCallback: controller.onPageChangedCallback,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => controller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20.0),
                foregroundColor: Colors.white,
              ), 
              child:  Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: tDarkColor, shape: BoxShape.circle
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.skip(),
              child: const Text("Skip", style: TextStyle(color: Colors.grey),),
              ), 
          ),
          Obx(
            () => Positioned(
              bottom: 22.0,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xFF272727),
                  dotHeight: 5.0
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
