import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authantication/models/model_on_boarding.dart';
import 'package:login_flutter_app/src/features/authantication/screens/on_boarding/widgets/on_boarding_page_widget.dart';

class OnboardingController extends GetxController {
  final liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: tOnboardingImage1,
        title: tOnboardingTitle1,
        subTitle: tOnboardingSubTitle1,
        counterText: tOnboardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: tOnboardingImage2,
        title: tOnboardingTitle2,
        subTitle: tOnboardingSubTitle2,
        counterText: tOnboardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnboardingPageWidget(
      model: OnBoardingModel(
        image: tOnboardingImage3,
        title: tOnboardingTitle3,
        subTitle: tOnboardingSubTitle3,
        counterText: tOnboardingCounter3,
        bgColor: tOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
  animateToNextSlide() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }
  skip() => liquidController.jumpToPage(page: 2);
}