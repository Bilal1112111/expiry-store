import 'package:flutter/material.dart';

import '../../constant.dart';

// ignore: must_be_immutable
class DefaultButton extends StatelessWidget {
  DefaultButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.color = primaryColor,
  });
  String label;
  double? width;
  void Function()? onPressed;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width / 1.2,
      height: buttonHeight,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          shape: MaterialStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
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
