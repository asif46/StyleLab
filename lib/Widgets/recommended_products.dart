import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Constant/app_strings.dart';
import '../Controller/favourite_Controller.dart';

final FavouriteController likeboxController = Get.put(FavouriteController());

class RecommendedProducts extends StatelessWidget {
  final List<String> imagesList = [recommended_1, recommended_2, ladyCoat_1, ladyBag];

  RecommendedProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 540.h,
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            RxBool isLiked = false.obs;

            return Obx(() {
              isLiked.value;
              return Category(
                image_location: imagesList[index],
                image_caption: "",
                Subtitle: "Hooded Fur Jacket",
                New_price: "\$540",
                icon: isLiked.value == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                function: () {
                  isLiked.value = !isLiked.value;
                },
              );
            });
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 150 / 260,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2),
          itemCount: 4,
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final String Subtitle;
  final String? New_price;
  final IconData? icon;
  final VoidCallback function;

  Category({
    required this.image_location,
    required this.image_caption,
    this.New_price,
    required this.Subtitle,
    this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            // color: Colors.yellow,
            width: 160.w,
            height: 270.16.h,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image_location,
                  width: 165.w,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Subtitle,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Price: " + New_price!,
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
          left: 140,
          bottom: 80,
          child: GestureDetector(
            onTap: function,
            child: Icon(
              icon,
              color:  Colors.pink,
              size: 25.sp,
            ),
          ),
        )
      ],
    );
  }
}
