import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomizedSearchBar extends StatelessWidget {
  const CustomizedSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Theme.of(context).textTheme.displayMedium,
      cursorColor: primaryColor,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        prefixIcon: const Icon(
          Icons.search_rounded,
          color: primaryColor,
          size: 22,
        ),
        suffixIcon: IconButton(
          highlightColor: Colors.transparent,
          onPressed: () {},
          icon: const Icon(
            Icons.filter_list,
            size: 22,
            color: primaryColor,
          ),
        ),
        contentPadding: const EdgeInsets.all(5),
        hintText: 'Search',
        hintStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Colors.grey,
            ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        border: InputBorder.none,
        filled: true,
        fillColor: const Color(0XFFE6F9F2),
      ),
    );
  }
}
