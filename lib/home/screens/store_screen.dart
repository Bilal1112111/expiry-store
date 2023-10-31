import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uni_project/home/states/store_states.dart';

import '../../constant.dart';
import '../components/comment_card.dart';
import '../components/customized_drop_menu.dart';
import '../components/customized_rating_bar.dart';
import '../components/product_card.dart';
import '../components/store_screen_app_bar.dart';
import '../cubit/store_cubit.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});
  static String route = '/store_screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreCubit(),
      child: BlocBuilder<StoreCubit, StoreStates>(
        builder: (context, state) {
          var storeCubit = StoreCubit.get(context);
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(
                  double.infinity, MediaQuery.of(context).size.height / 2.25),
              child: const StoreScreenAppBar(),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              // width: MediaQuery.sizeOf(context).width * 0.35,
                              height: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: const Color(0XFFE6F9F2),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.8',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            fontSize: 36,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  CustomizedRatingBar(itemSize: 15.0),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.sizeOf(context).width * 0.018,
                          ),
                          const Expanded(
                            flex: 3,
                            child: CommentCard(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 54,
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                const MaterialStatePropertyAll(primaryColor),
                            shape: MaterialStatePropertyAll<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          child: const CustomizedDropDownMenu(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GridView.builder(
                        padding: const EdgeInsets.all(5),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing:
                              MediaQuery.sizeOf(context).width * 0.02,
                          mainAxisSpacing:
                              MediaQuery.sizeOf(context).height * 0.02,
                          mainAxisExtent:
                              MediaQuery.sizeOf(context).height * 0.36,
                        ),
                        itemBuilder: (context, index) => const ProductCard(),
                        itemCount: 10,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// class ImageIcon extends StatelessWidget {
//   const ImageIcon({
//     super.key,
//     required this.path,
//   });
//   final String path;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         print('tapped');
//       },
//       child: SizedBox(
//         height: 26,
//         child: Image.asset(
//           path,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
