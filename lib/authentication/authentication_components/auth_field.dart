import 'package:flutter/material.dart';

import '../../constant.dart';

// ignore: must_be_immutable
class AuthField extends StatelessWidget {
  AuthField(
      {super.key,
      required this.label,
      this.isPassword = false,
      this.prefixIcon,
      this.suffixIcon,
      this.isEnabled,
      this.hintText});
  String label;
  bool? isEnabled = true;
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  bool isPassword;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 1.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              label,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          TextField(
            style: Theme.of(context).textTheme.displayMedium,
            cursorColor: primaryColor,
            enabled: isEnabled,
            keyboardType: TextInputType.emailAddress,
            obscureText: isPassword,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              prefixIcon: prefixIcon != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Icon(
                        prefixIcon,
                        color: primaryColor,
                        size: 22,
                      ),
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        suffixIcon,
                        size: 22,
                        color: primaryColor,
                      ),
                    )
                  : null,
              prefixIconConstraints: const BoxConstraints(minWidth: 0),
              contentPadding: const EdgeInsets.all(5),
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Colors.grey,
                  ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              border: InputBorder.none,
              filled: true,
              fillColor: const Color(0XFFE6F9F2),
            ),
          ),
        ],
      ),
    );
  }
}
