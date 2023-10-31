import 'package:flutter/material.dart';

import '../../constant.dart';
import '../components/category_box.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});
  static String route = '/product';

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isTapped = true;
  bool isExpanded = false;
  bool animationEnd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/icons/bilal.jpg',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                    CategoryBox(),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Product Title',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      isTapped = !isTapped;
                      animationEnd = false;
                    });
                  },
                  onHighlightChanged: (value) {
                    setState(() {
                      isExpanded = value;
                    });
                  },
                  child: AnimatedContainer(
                    onEnd: () {
                      setState(() {
                        animationEnd = !animationEnd;
                      });
                    },
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: isTapped
                        ? isExpanded
                            ? MediaQuery.sizeOf(context).height * 0.1
                            : MediaQuery.sizeOf(context).height * 0.11
                        : isExpanded
                            ? MediaQuery.sizeOf(context).height * 0.29
                            : MediaQuery.sizeOf(context).height * 0.3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.5),
                          blurRadius: 20,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(20),
                    child: isTapped
                        ? Column(
                            mainAxisAlignment: animationEnd
                                ? MainAxisAlignment.center
                                : MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Product Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    isTapped
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Product Details',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Icon(
                                    isTapped
                                        ? Icons.keyboard_arrow_down
                                        : Icons.keyboard_arrow_up,
                                    color: Colors.white,
                                    size: 27,
                                  ),
                                ],
                              ),
                              Flexible(
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Text(
                                    isTapped
                                        ? ''
                                        : 'This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it This Product can be awesome you can take a shower in five minutes and your hair will be amazing and fantastic , you should buy it ',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    'expiry date : 2024/11/2',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0XFFE6F9F2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: MediaQuery.sizeOf(context).height * 0.08,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Price : 15000 S.P',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.black),
                        ),
                        const Spacer(),
                        Text(
                          'Quantity : 10',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
