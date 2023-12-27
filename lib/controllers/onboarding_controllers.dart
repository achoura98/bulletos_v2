import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:bulletos_v2/config/constants/constant_image.dart';
import 'package:bulletos_v2/config/constants/text_string.dart';
import 'package:bulletos_v2/models/events/onboading_model.dart';
import 'package:bulletos_v2/src/presentation/views/onboarding_screen/components/onboading_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class OnboardingController extends GetxController {
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnboardingPageWidget(
        model: OnBoardingModel(
      BImages.onboardingImage1,
      BTexts.tOnboardingTitle1,
      BTexts.tOnboardingSubTitle1,
      BTexts.tOnboardingCounter1,
      BColors.tOnboardingScreen1Colors,
    )),
    OnboardingPageWidget(
        model: OnBoardingModel(
      BImages.onboardingImage2,
      BTexts.tOnboardingTitle2,
      BTexts.tOnboardingSubTitle2,
      BTexts.tOnboardingCounter2,
      BColors.tOnboardingScreen2Colors,
    )),
    OnboardingPageWidget(
        model: OnBoardingModel(
      BImages.onboardingImage3,
      BTexts.tOnboardingTitle3,
      BTexts.tOnboardingSubTitle3,
      BTexts.tOnboardingCounter3,
      BColors.tOnboardingScreen3Colors,
    )),
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  // ignore: non_constant_identifier_names
  OnPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;
}
