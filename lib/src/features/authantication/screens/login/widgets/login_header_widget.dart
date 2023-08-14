import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: const AssetImage(tWelcomeImage), height: size.height * 0.2,),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headlineLarge,),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}