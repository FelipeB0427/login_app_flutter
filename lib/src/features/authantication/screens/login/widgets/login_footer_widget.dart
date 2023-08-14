import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight - 20.0,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(tGoogleLogo), width: 24.0, height: 24.0,),
            onPressed: (){},
            label: const Text(tSignInWithGoogle),
          ),
        ),

        const SizedBox(height: tFormHeight - 20.0,),

        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
            text: tDontHaveAnAccount,
            style: Theme.of(context).textTheme.bodySmall,
              children: const [
                TextSpan(
                  text: tSignUp,
                  style: TextStyle(color: Colors.blue),
                )
              ]
            )),
        ),
      ],
    );
  }
}