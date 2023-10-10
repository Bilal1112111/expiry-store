import 'package:flutter/material.dart';

import 'otp_field.dart';

class OTP extends StatelessWidget {
  const OTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: const Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OtpField(),
            OtpField(),
            OtpField(),
            OtpField(),
          ],
        ),
      ),
    );
  }
}
