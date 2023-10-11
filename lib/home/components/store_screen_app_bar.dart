import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class StoreScreenAppBar extends StatelessWidget {
  const StoreScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        color: primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: AppBar().preferredSize.height - 25),
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/icons/bilal.jpg'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Expiry Store',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.messenger_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
