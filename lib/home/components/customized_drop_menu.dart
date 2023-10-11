import 'package:flutter/material.dart';

class CustomizedDropDownMenu extends StatelessWidget {
  const CustomizedDropDownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Products',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.transparent),
              color: const Color(0XFFE6F9F2),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
            height: 35,
            width: MediaQuery.sizeOf(context).width * 0.25,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: 'test1',
                items: [
                  DropdownMenuItem(
                    value: 'test1',
                    child: Text(
                      'All',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                  const DropdownMenuItem(
                    value: 'test2',
                    child: Text('item2'),
                  ),
                  const DropdownMenuItem(
                    value: 'test3',
                    child: Text('item3'),
                  ),
                  const DropdownMenuItem(
                    value: 'test4',
                    child: Text('item4'),
                  ),
                  const DropdownMenuItem(
                    value: 'test5',
                    child: Text('item5'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
