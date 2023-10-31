import 'package:flutter/material.dart';

import '../../constant.dart';

class WithGoogle extends StatelessWidget {
  const WithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.2,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(5),
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: const BorderSide(
                color: Colors.white,
                width: 0,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              child: Image.asset('assets/icons/google.png'),
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              'Login With Google',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
