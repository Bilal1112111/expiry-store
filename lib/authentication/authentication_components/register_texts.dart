import 'package:flutter/material.dart';

class RegisterTexts extends StatelessWidget {
  const RegisterTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Sign up',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          'To browse endless',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'products',
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
      ],
    );
  }
}
