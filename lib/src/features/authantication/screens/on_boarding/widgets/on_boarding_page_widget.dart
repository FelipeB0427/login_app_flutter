import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/features/authantication/models/model_on_boarding.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(model.image), height: size.height * 0.4,),
          Column(
            children: [
              Text(model.title, style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center,),
              Text(model.subTitle, textAlign: TextAlign.center,),
            ],
          ),
        Text(model.counterText, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: 80.0,)
        ],
      ),
    );
  }
}